import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:booky_app/features/home/presentation/views/widget/feature_Book_list_view.dart';
import 'package:booky_app/features/home/presentation/views/widget/newest_books_list_view.dart';
import 'package:flutter/material.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeatureBooksListView(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Newest Books",
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(child: NewestBookListView()),
      ],
    );
  }
}
