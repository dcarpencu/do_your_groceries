import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerProducts extends StatefulWidget {
  const ShimmerProducts({super.key});

  @override
  State<ShimmerProducts> createState() => _ShimmerProductsState();
}

class _ShimmerProductsState extends State<ShimmerProducts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55, // Set a specific height for the Shimmer
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 16),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(8),
              height: 80,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            );
          },
        ),
      ),
    );
  }
}
