import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListsCarouselShimmer extends StatefulWidget {
  const ListsCarouselShimmer({super.key});

  @override
  State<ListsCarouselShimmer> createState() => _ListsCarouselShimmerState();
}

class _ListsCarouselShimmerState extends State<ListsCarouselShimmer> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                width: 212,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        SizedBox(
          height: 320,
          child: _buildShimmerList(),
        ),
      ],
    );
  }

  Widget _buildShimmerList() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 16),
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 240,
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
