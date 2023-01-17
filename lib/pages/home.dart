import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mylogin_191/pages/login.dart';

 class  home extends StatelessWidget {
  const home({super.key});

//  logger(){
//   Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
        }, icon: Icon(Icons.logout_outlined))
      ], title: Text('somali'),
      ),
      body:const Center(child: Text("loged"),),
    );
  }
}
