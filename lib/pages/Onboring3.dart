import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/app_base.dart';

class Onboaring3 extends StatefulWidget {
  const Onboaring3({Key? key}) : super(key: key);

  @override
  State<Onboaring3> createState() => _OnboaringState();
}

class _OnboaringState extends State<Onboaring3> {
  @override
  Widget build(BuildContext context) {
    onTap(){

    }
    return Scaffold(
      body: Base(title: 'Express Product Delivery', text: 'Your product will be delivered to your home safetly and securely', index: 3, opTap: () => {
        //  Navigator.push(
        //                 context,
        //                 MaterialPageRoute(builder: (context) => Onboaring2()),
        //               )
      },textButton: 'Start Your Journey',),
    );
  }
}