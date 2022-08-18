import 'package:flutter/material.dart';
import 'package:nova/components/app_button.dart';
import 'package:nova/values/app_colors.dart';
import 'package:email_validator/email_validator.dart';

import 'InputEmail.dart';
import 'InputPassword.dart';
import 'textSign.dart';

class MyCustomForm extends StatelessWidget {
  final String textemail;
  final String textLogin;
  final String textPass;
  final  TextEditingController emailController;
  final  TextEditingController inputPassword;
  const MyCustomForm({super.key, required this.textLogin, required this.textPass, required this.textemail, required this.emailController, required this.inputPassword});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double height = size.height;
    return Scaffold(
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: height / 25, vertical: height /30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Hello There'),
              Padding(
                padding:  EdgeInsets.only(top: 8),
                child: Text('Welcome Back',style: TextStyle(color: AppColors.textColor,fontWeight: FontWeight.bold,fontSize: 20),),
              )
            ],
          ),
        ),
        InputEmail(height: height, HintText: textemail, emailController: emailController,),
        InputPassword(height: height, HintText: textPass,inputPassword:inputPassword ),
        abc(height: height),
        Padding(
          padding:  EdgeInsets.only( top: height / 5  ),
          child: Button(size: size, onTap: (){
              print(emailController.text);
          },
          text: 'Login'),
        ),
        textSign(height: height, textLogin: textLogin),
      ],
    ));
  }
}

class abc extends StatelessWidget {
  const abc({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height / 40, vertical: height /40),
      child: InkWell(
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: AppColors.primaryColor),
        ),
        onTap: () {
          
        },
      ),
    );
  }
}






