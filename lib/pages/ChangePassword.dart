import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nova/components/app_ChangPassScreen.dart';

class PageChangePass extends StatefulWidget {
  const PageChangePass({Key? key}) : super(key: key);

  @override
  State<PageChangePass> createState() => _PageChangePassState();
}

class _PageChangePassState extends State<PageChangePass> {
  TextEditingController password = new TextEditingController();
  TextEditingController repassword = new TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangePassScreen(password: password, repassword: repassword),
    );
  }
}