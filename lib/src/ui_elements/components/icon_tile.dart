import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconTile extends StatelessWidget {
  const IconTile({
    required this.item,
    required this.location,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final String item;
  final String location;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.blueGrey.withOpacity(0.3) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 80,
                height: 80,
                child: SvgPicture.asset('assets/$location/$item.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
