import 'package:flutter/material.dart';

import 'app_button.dart';
import 'app_progress.dart';
class BotOnboaring extends StatelessWidget {
  const BotOnboaring({
    Key? key,
    required this.size,
    required this.title,
    required this.text,
    required this.index,
    required this.opTap,
    required this.textButton
  }) : super(key: key);

  final Size size;
  final String title;
  final String text;
  final double index;
  final String textButton;
  final opTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body : Container(
        //height: size.height / 2,
        decoration: BoxDecoration(
            color: Colors.green[200],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(title,
              style: TextStyle(inherit: true, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(text,
            style: TextStyle(fontSize: 20, ),
            textAlign: TextAlign.center,
            ),
            index > 0 ? Progress(index: index,) : Column(),
            Button(size: size, onTap: opTap, text: textButton,),
          ],
        ),
      ),
    );
  }
}