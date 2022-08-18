import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nova/components/app_form.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController inputPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  MyCustomForm(
        textLogin: 'Sign Up', 
        textPass: 'Password', 
        textemail: 'Email address',  
        emailController: emailController,
        inputPassword: inputPassword,
        ) ,
    );

  }
}