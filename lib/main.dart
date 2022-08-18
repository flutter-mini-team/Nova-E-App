import 'package:flutter/material.dart';
import 'package:nova/components/app_button.dart';
import 'package:nova/components/app_form.dart';
import 'package:nova/components/home.dart';
import 'package:nova/components/msbox.dart';
import 'package:nova/pages/ChangePassword.dart';
import 'package:nova/pages/FogotPassword.dart';
import 'package:nova/pages/Login1.dart';
import 'package:nova/pages/Onboring.dart';

import 'components/app_base.dart';
import 'components/app_progress.dart';
import 'components/nabar_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: Onboaring()
        home: MessBox(value: true,)
    );
  }
}

