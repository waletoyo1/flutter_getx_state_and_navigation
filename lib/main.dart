import 'package:flutter/material.dart';
import 'package:flutter_getx_state_and_navigation/screens/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.upToDown,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Home()
    );
  }
}




