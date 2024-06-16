import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  AnimatedButton({required this.controller, required this.onPress, super.key})
      : _width = Tween<double>(
          begin: 0,
          end: 500,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0, 0.5),
          ),
        ),
        _height = Tween<double>(
          begin: 0,
          end: 50,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.5, 0.7),
          ),
        ),
        radius = Tween<double>(
          begin: 0,
          end: 20,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.6, 1),
          ),
        ),
        opacity = Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.6, 0.8),
          ),
        );

  final AnimationController controller;
  final VoidCallback onPress;

  final Animation<double> _width;
  final Animation<double> _height;
  final Animation<double> radius;
  final Animation<double> opacity;

  @override
  AnimatedButtonState createState() => AnimatedButtonState();
}

class AnimatedButtonState extends State<AnimatedButton> with SingleTickerProviderStateMixin {
  late AnimationController _pressController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _pressController = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.95,
    ).animate(
      CurvedAnimation(
        parent: _pressController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _pressController.dispose();
    super.dispose();
  }

  void _resetScaleAnimation() {
    _pressController
      ..reverse()
      ..reset();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTapDown: (_) {
            _pressController.forward();
          },
          onTapUp: (_) {
            _resetScaleAnimation();
            widget.onPress();
          },
          onTapCancel: _resetScaleAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: widget._width.value,
              height: widget._height.value,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.radius.value),
                gradient: const LinearGradient(
                  colors: <Color>[
                    Colors.amber,
                    Colors.amberAccent,
                  ],
                ),
              ),
              child: Center(
                child: FadeTransition(
                  opacity: widget.opacity,
                  child: const Text(
                    'Autentificare',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
