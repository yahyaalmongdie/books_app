import 'package:booky_app/core/widget/custom_button.dart';
import 'package:booky_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.onPressed, required this.bookModel});

  final Function() onPressed;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: (){},
              textColor: Colors.black,
              btText: "Free",
              btColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 16,
              onPressed: onPressed,
              textColor: Colors.white,
              btText: "Free preview",
              btColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
