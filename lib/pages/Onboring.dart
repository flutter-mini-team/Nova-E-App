import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nova/pages/Onboring2.dart';

import '../components/app_base.dart';

class Onboaring extends StatefulWidget {
  const Onboaring({Key? key}) : super(key: key);

  @override
  State<Onboaring> createState() => _OnboaringState();
}

class _OnboaringState extends State<Onboaring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Base(title: 'Discover a New For You', text: 'Lots of new products here and decide which product is best for you', index: 1, opTap: () => {
        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Onboaring2()),
                      )
      },textButton: 'Next',),
    );
  }
}