import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:shimmer/shimmer.dart';

class ListsCarouselShimmer extends StatefulWidget {
  const ListsCarouselShimmer({super.key});


  @override
  State<ListsCarouselShimmer> createState() => _ListsCarouselShimmerState();
}

class _ListsCarouselShimmerState extends State<ListsCarouselShimmer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: _buildShimmerList(),
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      itemCount: 4, // Number of shimmer items
      scrollDirection: Axis.horizontal,
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
