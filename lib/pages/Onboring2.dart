import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nova/pages/Onboring3.dart';

import '../components/app_base.dart';

class Onboaring2 extends StatefulWidget {
  const Onboaring2({Key? key}) : super(key: key);

  @override
  State<Onboaring2> createState() => _OnboaringState();
}

class _OnboaringState extends State<Onboaring2> {
  @override
  Widget build(BuildContext context) {
    onTap(){

    }
    return Scaffold(
      body: Base(title: 'Find Your Best Product', text: 'Famous and quality product at affordable prices', index: 2, opTap: () => {
         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Onboaring3()),
                      )
      },textButton: 'Next',),
    );
  }
}