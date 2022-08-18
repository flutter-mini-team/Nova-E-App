import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nova/components/BotOnboaring.dart';
import 'package:nova/values/app_colors.dart';

import 'app_button.dart';
import 'app_progress.dart';

class Base extends StatelessWidget {
  
  const Base(
      {Key? key,
      required this.title,
      required this.text,
      required this.index,
      required this.opTap,
      required this.textButton
      })
      : super(key: key);
final String title;
final String text;
final double index;
final opTap;
final String textButton;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height / 2,
          ),
          BotOnboaring(size: size, title: title, text: text, index: index, opTap: opTap, textButton: textButton, ),
        ],
      ),
    );
  }

  
  }






