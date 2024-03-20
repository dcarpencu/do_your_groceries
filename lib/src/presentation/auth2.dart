// import 'package:flutter/material.dart';
//
// class AuthPage extends StatefulWidget {
//   const AuthPage({super.key});
//
//   @override
//   State<StatefulWidget> createState() {
//     return _AuthpageState();
//   }
// }
//
// class _AuthpageState extends State<AuthPage> {
//   bool _acceptTerms = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         child: Builder(
//           builder: (BuildContext context) {
//             return SafeArea(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   image: DecorationImage(
//                       image: const NetworkImage(
//                         'https://images.wallpapersden.com/image/download/deadpool-3-mobile-cool_bmdmbm6UmZqaraWkpJRnZmVlrWhoamo.jpg',
//                       ),
//                       fit: BoxFit.cover,
//                       colorFilter: ColorFilter.mode(
//                           Colors.black.withOpacity(0.5), BlendMode.dstATop,),),
//                 ),
//                 padding: const EdgeInsets.all(25),
//                 child: Center(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: <Widget>[
//                         SizedBox(
//                           height: 150,
//                           width: 150,
//                           child: Image.asset(
//                               'lib/src/assets/checklist.png',),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(bottom: 50),
//                           child: const Text(
//                             'Flutter Kart',
//                             style: TextStyle(fontSize: 35, color: Colors.white),
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.only(top: 10, bottom: 10),
//                           child:
//                           TextFormField(
//                             controller: _email,
//                             keyboardType: TextInputType.emailAddress,
//                             textInputAction: TextInputAction.next,
//                             autofocus: true,
//                               decoration: const InputDecoration(
//                                   focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(color: Colors.white),
//                                       borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),),
//                                   enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(color: Colors.white),
//                                       borderRadius:
//                                       BorderRadius.all(Radius.circular(10))),
//                                   // hintText: 'Enter your product title',
//                                   labelStyle: TextStyle(color: Colors.white),
//                                   labelText: 'Email Address', floatingLabelBehavior: FloatingLabelBehavior.auto,),
//                             validator: (String? value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'please provide an email';
//                               } else if (!value.contains('@')) {
//                                 return 'please enter a valid email';
//                               }
//                               return null;
//                             },
//                             onFieldSubmitted: (String value) {
//                               FocusScope.of(context).requestFocus(_passwordNode);
//                             },
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 25,
//                         ),
//                         TextFormField(
//                           controller: _password,
//                           focusNode: _passwordNode,
//                           decoration: const InputDecoration(
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.white),
//                                 borderRadius: BorderRadius.all(Radius.circular(10))),
//                             enabledBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.white),
//                                 borderRadius: BorderRadius.all(Radius.circular(10))),
//                             // hintText: 'Enter your product description',
//                             labelStyle: TextStyle(color: Colors.white),
//                             labelText: 'Password', floatingLabelBehavior: FloatingLabelBehavior.auto,),
//
//                           textInputAction: TextInputAction.done,
//                           validator: (String? value) {
//                             if (value == null || value.isEmpty) {
//                               return 'please provide a valid password';
//                             } else if (value.length < 6) {
//                               return 'Please provide a password longer than 6 characters';
//                             }
//                             return null;
//                           },
//                           onFieldSubmitted: (String value) {
//                             _onNext(context);
//                           },
//                         ),
//                         GestureDetector(
//                           onTap: () {
//
//                           },
//                           child: Container(
//                             alignment: Alignment.centerRight,
//                             margin: const EdgeInsets.only(top: 25, right: 5),
//                             child: const Text(
//                               'Forgot Password ?',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//
//                         // SwitchListTile(
//                         //   title: Text('I accept the Terms & Conditions'),
//                         //   value: _acceptTerms,
//                         //   onChanged: (bool value) {
//                         //     setState(() {
//                         //       _acceptTerms = value;
//                         //     });
//                         //   },
//                         // ),
//                         const SizedBox(
//                           height: 25,
//                         ),
//                         TextButton(onPressed: () => _onNext(context), child: const Text('Login')),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.pushNamed(context, '/auth2');
//                           },
//                           child: const Text('Sign up', style: TextStyle(color: Colors.black)),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
