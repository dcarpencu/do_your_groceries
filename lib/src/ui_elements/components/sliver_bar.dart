import 'package:do_you_groceries/src/ui_elements/components/background_wave_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliverAppBarProducts extends SliverPersistentHeaderDelegate {
  SliverAppBarProducts(this.image, this.title);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final double adjustedShrinkOffset = shrinkOffset > minExtent ? minExtent : shrinkOffset;

    final double offset = (minExtent - adjustedShrinkOffset) * 0.5;
    final double topPadding = MediaQuery.of(context).padding.top + 16;

    return Stack(
      children: <Widget>[
        BackgroundWave(
          pageName: title,
        ),
        Positioned(
          top: topPadding + offset - 40,
          left: 256,
          child: SizedBox(
            height: 100,
            child: SvgPicture.asset('assets/groceryListIcons/$image.svg',
              width: 100,
              height: 100,),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
