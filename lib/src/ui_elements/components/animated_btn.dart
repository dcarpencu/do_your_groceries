import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';

class AnimatedBtn extends StatelessWidget {
  const AnimatedBtn({
    super.key,
    // ignore: always_specify_types
    required RiveAnimationController btnAnimationController,
    required this.press,
  }) : _btnAnimationController = btnAnimationController;

  // ignore: always_specify_types
  final RiveAnimationController _btnAnimationController;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(children: <Widget>[
          RiveAnimation.asset(
            'assets/RiveAssets/button.riv',
            // ignore: always_specify_types
            controllers: <RiveAnimationController>[_btnAnimationController],
          ),
          const Positioned.fill(
              top: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(CupertinoIcons.arrow_right),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Start now',
                      style: TextStyle(fontWeight: FontWeight.w600),),
                ],
              ),),
        ],),
      ),
    );
  }
}
