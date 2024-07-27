import 'package:booky_app/features/home/data/model/book_model/book_model.dart';
import 'package:booky_app/features/home/presentation/views/widget/book_details_section.dart';
import 'package:booky_app/features/home/presentation/views/widget/custom_app_bar_book_details.dart';
import 'package:booky_app/features/home/presentation/views/widget/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppBarBookDetails(),
                BookDetailsSection(bookModel: bookModel,),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBookSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
