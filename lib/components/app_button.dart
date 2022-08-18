import 'package:flutter/material.dart';
import 'package:nova/pages/Onboring2.dart';

import '../values/app_colors.dart';
class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.size,
    required this.onTap,
    required this.text
  }) : super(key: key);
  
  final String text;
  final Size size;
  final  onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap
      ,
      child: Container(
        width: double.maxFinite,
        height: size.height / 10,
        padding:  EdgeInsets.symmetric(horizontal: size.height / 20),
        margin:
             EdgeInsets.symmetric(horizontal: size.height / 25, vertical: size.height / 30 ),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                //textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                text,
                style: const TextStyle(
                  fontSize: 30,
                  color: AppColors.BackgroundColor,
                ),
              ),
            ]),
      ),
    );
  }
}