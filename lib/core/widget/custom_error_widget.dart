import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(this.errorMassage, {super.key});

  final String errorMassage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMassage,style: Styles.textStyle18,textAlign: TextAlign.center,));
  }
}
