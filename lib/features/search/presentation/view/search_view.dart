import 'package:booky_app/features/search/presentation/view/widget/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}
