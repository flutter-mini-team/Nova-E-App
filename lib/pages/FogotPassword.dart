import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/app_ForgotPass.dart';

class PageForgotPass extends StatefulWidget {
  const PageForgotPass({Key? key}) : super(key: key);

  @override
  State<PageForgotPass> createState() => _PageForgotPassState();
}

class _PageForgotPassState extends State<PageForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForGotPass(textemail: 'Email address'),
    );
  }
}