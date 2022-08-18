import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nova/components/app_base.dart';
import 'package:nova/components/app_button.dart';
import 'package:nova/values/app_colors.dart';

import 'InputEmail.dart';
import 'InputPassword.dart';
import 'app_progress.dart';

class ForGotPass extends StatefulWidget {
  final String textemail;
  const ForGotPass({Key? key, required this.textemail}) : super(key: key);

  @override
  State<ForGotPass> createState() => _ForGotPassState();
}

class _ForGotPassState extends State<ForGotPass> {
  bool temt = false;
  bool temt2 = false;
  TextEditingController emailController = new TextEditingController();
  void abc() {
    setState(() {
      temt = !temt;
    });
  }

  void setTemt2() {
    setState(() {
      temt2 = !temt2;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double height = size.height;
    return Scaffold(
        body: Stack(
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: !temt ? Colors.black45 : AppColors.BackgroundColor),
          child: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: height / 50, vertical: height / 50),
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: height / 50, vertical: height / 50),
                  child: Text(
                      "Don't worry, Nova have simple step to create your new password"),
                ),
                InputEmail(
                    height: height,
                    HintText: widget.textemail,
                    emailController: emailController),
              ],
            ),
          ),
        ),
        temt
            ? Padding(
                padding: EdgeInsets.only(top: height * 8 / 10),
                child: Button(size: size, onTap: abc, text: 'Confirm'),
              )
            :
            //Base(title: 'Thank You!', text: 'We will sent 4 digits verification code to ', index: 0, opTap: abc, textButton: 'Verity')
            Padding(
                padding: EdgeInsets.only(top: height / 2),
                child: Container(
                  height: height,
                  decoration: BoxDecoration(
                      color: AppColors.BackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Thank You!',
                        style: TextStyle(
                            inherit: true,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'We will sent 4 digits verification code to ${emailController.text} plese take a look and verify it ',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      //index > 0 ? Progress(index: 0,) : Column(),
                      Button(
                        size: size,
                        onTap: setTemt2,
                        text: 'textButton',
                      ),
                    ],
                  ),
                ),
              ),
        temt2
            ? Padding(
                padding: EdgeInsets.only(top: height / 2),
                child: Container(
                  height: height,
                  decoration: BoxDecoration(
                      color: AppColors.BackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Thank You!',
                        style: TextStyle(
                            inherit: true,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'We will sent 4 digits verification code to ${emailController.text} plese take a look and verify it ',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      //index > 0 ? Progress(index: 0,) : Column(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                 SizedBox(
                                  width: 50,
                                   child: TextField(
                                      decoration:InputDecoration(
                                          ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ]),
                                 )
                              ],
                            ),
                          ),
                           Expanded(
                            flex: 1,
                             child: Column(
                              children: [
                                 SizedBox(
                                  width: 50,
                                   child: TextField(
                                      decoration: new InputDecoration(
                                          ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ]),
                                 )
                              ],
                                                     ),
                           ),
                           Expanded(
                            flex: 1,
                             child: Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  child: TextField(
                                    
                                      decoration: new InputDecoration(
                                          ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ]),
                                )
                              ],
                                                     ),
                           ),
                           Expanded(
                            flex: 1,
                             child: Column(
                              children: [
                                 SizedBox(
                                  width: 50,
                                   child: TextField(
                                      decoration:  InputDecoration(
                                          ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ]),
                                 )
                              ],
                                                     ),
                           ),
                        ],
                      ),
                      Button(
                        size: size,
                        onTap: setTemt2,
                        text: 'Yen',
                      ),
                    ],
                  ),
                ),
              )
            : Row(),
      ],
    ));
  }
}
