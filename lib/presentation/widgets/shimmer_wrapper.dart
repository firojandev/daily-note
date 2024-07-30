import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class ShimmerWrapper extends StatelessWidget {
  const ShimmerWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: child,
        baseColor: Colors.grey[100]!,
        highlightColor: Colors.grey[300]!,
    );
  }
}
