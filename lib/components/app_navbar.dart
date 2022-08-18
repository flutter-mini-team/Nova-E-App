import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nova/values/app_colors.dart';
import 'package:nova/values/app_icons.dart';
import 'package:nova/values/app_stay.dart';

class MyNarbar extends StatelessWidget {
  
  final double narbar;

  const MyNarbar({super.key, required this.narbar});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double long2 = size.height / 10 ;
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: long2),
      height: long2,
      
      decoration: BoxDecoration(
        color: AppColors.BackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        )
      ),
      //color: AppColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            AppIcons.home_sharp,
            size :  long2 / 2,
            color: narbar == 1 ? AppColors.primaryColor : AppColors.textColor,
          ),
          InkWell(
            onTap: () => {
                PageStay.counter = 2,
                print('oke')
            },
            child: Icon(
              AppIcons.search,
              size :  long2 / 2,
              color: narbar == 2 ? AppColors.primaryColor : AppColors.textColor,
            ),
          ),
          Icon(
            AppIcons.bag,
            size :  long2 / 2,
            color: narbar == 3 ? AppColors.primaryColor : AppColors.textColor,
          ),
          Icon(
            AppIcons.person,
            size:  long2 / 2,
            color: narbar == 4 ? AppColors.primaryColor : AppColors.textColor,
          ),
        ],
      ),
    );
  }
}
