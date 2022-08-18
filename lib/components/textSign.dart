import 'package:flutter/material.dart';

import '../values/app_colors.dart';
class textSign extends StatelessWidget {
  const textSign({
    Key? key,
    required this.height,
    required this.textLogin,
  }) : super(key: key);

  final double height;
  final String textLogin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only( top: height / 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account? Please "),
          Text(textLogin, style: TextStyle(color: AppColors.primaryColor),)
        ],
      ),
    );
  }
}