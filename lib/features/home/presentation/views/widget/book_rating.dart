import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final double rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffffdd4f),
        ),
        const SizedBox(
          width: 6.3,
        ),
         SizedBox(
          child: Text(
            "$rating",
            style: Styles.textStyle16,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text("($count)", style: Styles.textStyle14),
        ),
      ],
    );
  }
}
