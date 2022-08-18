import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nova/values/app_colors.dart';

class MessBox extends StatelessWidget {
  const MessBox({Key? key, required this.value}) : super(key: key);
  
  final bool value;
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height / 3,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColors.primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Circle(value: value,),
            value ? Text('Your Order Success!',style: TextStyle(fontWeight: FontWeight.bold),) : Text('Your Order Failed!', style: TextStyle(fontWeight: FontWeight.bold)),
            value ? Text('Tap to return to home screen') : Text('Tap to try again to the transaction')

          ],
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({
    Key? key,
    required this.value
  }) : super(key: key);

  final bool value;
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(shape: BoxShape.circle, color: value ? Colors.green[300] : Colors.red[300],),
    child: Padding(
      padding:  EdgeInsets.all(10.0),
      child: value
                ? Icon(
                    Icons.check,
                    size: 30.0,
                    color: Colors.green[900],
                  )
                : Icon(
                    Icons.close,
                    size: 30.0,
                    color: Colors.red[900],
                  ),
          
    ),
    );
  }
}