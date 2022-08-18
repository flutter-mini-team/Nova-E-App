import 'package:flutter/material.dart';

import '../values/app_colors.dart';
class InputEmail extends StatelessWidget {
  
  const InputEmail({
    Key? key,
    required this.height,
    required this.HintText,
    required this.emailController
  }) : super(key: key);

  final double height;
  final String HintText;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    //TextEditingController emailController = new TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height / 50, vertical: height / 50),
      child: TextField(
        controller: emailController,
        decoration: InputDecoration(
          fillColor: AppColors.CardBgColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          hintText: HintText,
        ),
      ),
    );
  }
}