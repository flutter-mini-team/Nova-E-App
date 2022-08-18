import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../values/app_colors.dart';
import 'InputEmail.dart';
import 'InputPassword.dart';
import 'app_button.dart';
import 'app_form.dart';
import 'textSign.dart';

class ChangePassScreen extends StatefulWidget {
  final  TextEditingController password;
  final  TextEditingController repassword; 
  const ChangePassScreen({Key? key, required this.password, required this.repassword}) : super(key: key);

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double height = size.height;
    return Scaffold(
      body: Column(
      //crossAxisAlignment: CrossAxisAlignment.end,
      //rmainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: height / 50, vertical: height / 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Reset Password',style: TextStyle(color: AppColors.textColor,fontWeight: FontWeight.bold,fontSize: 20),),
              Padding(
                padding:  EdgeInsets.only(top: 8),
                child: Text('Set the new password for your account and you can access all the features.',style: TextStyle(color: AppColors.textColor,fontSize:15),),
              )
            ],
          ),
        ),
         InputPassword(height: height, HintText: 'Enter new password',inputPassword:widget.password ),
         InputPassword(height: height, HintText: 'Repeat password',inputPassword:widget.repassword ),
        
        Padding(
          padding:  EdgeInsets.only(top: height / 3),
          child: Button(size: size, onTap: (){
              //print(emailController.text);
          },
          text: 'Comfirm'),
        ),
        
      ],
    )
    );
  }
}