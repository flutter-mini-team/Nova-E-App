import 'package:flutter/material.dart';

import '../values/app_colors.dart';
class Progress extends StatelessWidget {
  const Progress({
    Key? key, 
    required this.index
  }) : super(key: key);
  final double index;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.bounceInOut,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: index == 1 ? 20 : 10,
            height: 5,
            decoration: BoxDecoration(
                color: index == 1
                    ? AppColors.textColor
                    : AppColors.primaryColor,
                borderRadius:
                    const BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(2, 3),
                      blurRadius: 3)
                ]),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.bounceInOut,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: index == 2 ? 20 : 10,
            height: 5,
            decoration: BoxDecoration(
                color: index == 2
                    ? AppColors.textColor
                    : AppColors.primaryColor,
                borderRadius:
                    const BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(2, 3),
                      blurRadius: 3)
                ]),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.bounceInOut,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: index == 3 ? 20 : 10,
            height: 5,
            decoration: BoxDecoration(
                color: index == 3
                    ? AppColors.textColor
                    : AppColors.primaryColor,
                borderRadius:
                    const BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(2, 3),
                      blurRadius: 3)
                ]),
          ),
        ],
      ),
    );
  }
}