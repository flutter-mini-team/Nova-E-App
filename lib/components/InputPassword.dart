import 'package:flutter/material.dart';
import 'package:nova/values/app_colors.dart';
class InputPassword extends StatelessWidget {
  const InputPassword({
    Key? key,
    required this.height,
    required this.HintText,
    required this.inputPassword
  }) : super(key: key);

  final double height;
  final String HintText;
  final TextEditingController inputPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height / 50, vertical: height / 50),
      child: TextField(
        obscureText: true,  
        controller: inputPassword,
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
