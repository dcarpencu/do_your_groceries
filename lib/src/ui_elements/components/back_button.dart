import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: IconButton(onPressed: () {
          context.pop();
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),),
      ),
    );
  }
}
