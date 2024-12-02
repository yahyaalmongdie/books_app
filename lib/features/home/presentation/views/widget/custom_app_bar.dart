import 'package:booky_app/core/utils/app_routes.dart';
import 'package:booky_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                return context.go(AppRoutes.kSearchView);
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
