import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerFlutter extends StatelessWidget {
  const ShimmerFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: const Color.fromRGBO(245, 245, 245, 1),
        enabled: true,
        
        child: const SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(

                height: 200,
                width: 200,
              ),
            ],
          ),
        ));
  }
}
