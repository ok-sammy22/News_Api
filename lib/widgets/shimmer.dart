import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewsShimmerCard extends StatelessWidget {
  const NewsShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.white,
              ),
              const SizedBox(height: 12),
              Container(height: 16, width: 220, color: Colors.white),
              const SizedBox(height: 8),
              Container(height: 14, width: 150, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
