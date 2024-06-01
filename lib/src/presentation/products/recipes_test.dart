// import 'package:flutter/material.dart';
// import 'package:google_generative_ai/google_generative_ai.dart';
//
// /// The API key to use when accessing the Gemini API.
// ///
// /// To learn how to generate and specify this key,
// /// check out the README file of this sample.
// const String _apiKey = String.fromEnvironment('API_KEY');
//
// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});
//
//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter + Generative AI'),
//       ),
//       body: const ChatWidget(apiKey: _apiKey),
//     );
//   }
// }
//
// class ChatWidget extends StatefulWidget {
//   const ChatWidget({
//     required this.apiKey,
//     super.key,
//   });
//
//   final String apiKey;
//
//   @override
//   State<ChatWidget> createState() => _ChatWidgetState();
// }
//
// class _ChatWidgetState extends State<ChatWidget> {
//   late final GenerativeModel _model;
//   late final ChatSession _chat;
//   final ScrollController _scrollController = ScrollController();
//   final TextEditingController _textController = TextEditingController();
//   final FocusNode _textFieldFocus = FocusNode();
//
//   bool _loading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _model = GenerativeModel(
//       model: 'gemini-1.5-pro',
//       apiKey: widget.apiKey,
//     );
//     _chat = _model.startChat();
//   }
//
//   void _scrollDown() {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) => _scrollController.animateTo(
//         _scrollController.position.maxScrollExtent,
//         duration: const Duration(
//           milliseconds: 750,
//         ),
//         curve: Curves.easeOutCirc,
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // design text input
//     final InputDecoration textFieldDecoration = InputDecoration(
//       contentPadding: const EdgeInsets.all(15),
//       hintText: 'Enter a prompt...',
//       border: OutlineInputBorder(
//         borderRadius: const BorderRadius.all(
//           Radius.circular(14),
//         ),
//         borderSide: BorderSide(
//           color: Theme.of(context).colorScheme.secondary,
//         ),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: const BorderRadius.all(
//           Radius.circular(14),
//         ),
//         borderSide: BorderSide(
//           color: Theme.of(context).colorScheme.secondary,
//         ),
//       ),
//     );
//
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Expanded(
//             child: _apiKey.isNotEmpty
//                 ? ListView.builder(
//                     controller: _scrollController,
//                     itemBuilder: (BuildContext context, int idx) {
//                       //final ({bool fromUser, String? text}) content = //_generatedContent[idx];
//                       return MessageWidget(
//                         text: content.text,
//                         isFromUser: content.fromUser,
//                       );
//                     },
//                     itemCount: _generatedContent.length,
//                   )
//                 : ListView(
//                     children: const <Widget>[
//                       Text(
//                         'No API key found. Please provide an API Key!',
//                       ),
//                     ],
//                   ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               vertical: 25,
//               horizontal: 15,
//             ),
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: TextField(
//                     autofocus: true,
//                     focusNode: _textFieldFocus,
//                     decoration: textFieldDecoration,
//                     controller: _textController,
//                     onSubmitted: _sendChatMessage,
//                   ),
//                 ),
//                 const SizedBox.square(dimension: 15),
//                 if (!_loading)
//                   IconButton(
//                     onPressed: () async {
//                       await _sendChatMessage(_textController.text);
//                     },
//                     icon: Icon(
//                       Icons.send,
//                       color: Theme.of(context).colorScheme.primary,
//                     ),
//                   )
//                 else
//                   const CircularProgressIndicator(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Future<void> _sendChatMessage(String message) async {
//     setState(() {
//       _loading = true;
//     });
//
//     try {
//       _generatedContent.add((text: message, fromUser: true));
//       final GenerateContentResponse response = await _chat.sendMessage(
//         Content.text(message),
//       );
//       final String? text = response.text;
//       _generatedContent.add((text: text, fromUser: false));
//
//       if (text == null) {
//         _showError('No response from API.');
//         return;
//       } else {
//         setState(() {
//           _loading = false;
//           _scrollDown();
//         });
//       }
//     } catch (e) {
//       _showError(e.toString());
//       setState(() {
//         _loading = false;
//       });
//     } finally {
//       _textController.clear();
//       setState(() {
//         _loading = false;
//       });
//       _textFieldFocus.requestFocus();
//     }
//   }
//
//   void _showError(String message) {
//     showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Something went wrong'),
//           content: SingleChildScrollView(
//             child: SelectableText(message),
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('OK'),
//             )
//           ],
//         );
//       },
//     );
//   }
// }
//
// class MessageWidget extends StatelessWidget {
//   const MessageWidget({
//     super.key,
//     this.text,
//     required this.isFromUser,
//   });
//
//   final String? text;
//   final bool isFromUser;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
//       children: <Widget>[
//         Flexible(
//             child: Container(
//                 constraints: const BoxConstraints(maxWidth: 520),
//                 decoration: BoxDecoration(
//                   color: isFromUser
//                       ? Theme.of(context).colorScheme.primaryContainer
//                       : Theme.of(context).colorScheme.surfaceContainerHighest,
//                   borderRadius: BorderRadius.circular(18),
//                 ),
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 15,
//                   horizontal: 20,
//                 ),
//                 margin: const EdgeInsets.only(bottom: 8),
//                 child: Column(children: <Widget>[
//                   if (text != null) Text(text!),
//                 ]))),
//       ],
//     );
//   }
// }
