import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextForm extends StatelessWidget {
  const CustomSearchTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: buildOtlinInputBorder(),
          focusedBorder: buildOtlinInputBorder(),
          filled: false,
          hintText: "search",
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Opacity(
                  opacity: .8,
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 22,
                  )))),
    );
  }

  OutlineInputBorder buildOtlinInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
