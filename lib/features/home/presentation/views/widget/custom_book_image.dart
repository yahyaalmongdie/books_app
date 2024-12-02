import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class CustomBooKImage extends StatelessWidget {
  const CustomBooKImage({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
              placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
      
          )
      ),
    );
  }
}
