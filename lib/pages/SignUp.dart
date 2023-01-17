import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utility/TextfieldWidget.dart';
import '../utility/buttonWidget.dart';
import '../utility/imagewidget.dart';
import '../utility/mytext.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
final email=TextEditingController();
final password=TextEditingController();
void logg() async {
  try{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
    print("Success");
  }catch(err){
    print("Error accured");
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          ImageWidget(
            ImageAsset: 'images/signup.png',
            ImageHeight: 250,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: Container(
              width: double.infinity,
              height: 450,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyText(
                    MylableText: 'Sign Up',
                    FontSize: 35,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  
                  TextField(
                      controller: email,
                      decoration: InputDecoration(
                          hintText: 'Email ID',
                          prefixIcon: Icon(Icons.alternate_email_outlined)),
                    ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                      controller: password,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock)),
                    ),
                  SizedBox(
                    height: 30,
                  ),
                  MyTextField(
                    HintText: 'Full name',
                    PrefixIcon: Icon(
                      Icons.perm_identity_rounded,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    child: MyButton(
                    
                    btnText: 'Sign Up',
                  ),
                  onTap: logg,
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
}
}