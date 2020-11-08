

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_getx_state_and_navigation/controller/controller.dart';
import 'secondpage.dart';

class Home extends StatelessWidget {
  final AppController myAppController = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Column(children: [

        SizedBox(height: 100.0),

       Center(
         child: Obx(
           ()=> Text('${myAppController.counter.value}')
         ),
       ),
       RaisedButton(
         onPressed: () => Get.to(SecondPage()),
         child: Text('Go to Second Page'),
 
       ),
      ],

      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
        FloatingActionButton(
          
          child: Icon(Icons.add),
          heroTag: null,
      
      onPressed: ()=>myAppController.increament(),),
      SizedBox(
        height: 10.0
      ),

      FloatingActionButton(child: Icon(Icons.remove),
         heroTag: null,
      
      onPressed: ()=>myAppController.decreament(),),
      ],)
    );

  }
}
