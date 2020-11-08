import 'package:flutter/material.dart';
import 'package:flutter_getx_state_and_navigation/screens/thirdpage.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_state_and_navigation/controller/controller.dart';

class SecondPage extends StatelessWidget {
  final AppController myAppController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(children: [

          SizedBox(height: 100.0),

       Center(
         child: Obx(
           ()=> Text('${myAppController.counter.value}')
         ),
       ),

       RaisedButton(
        //  onPressed: () => Get.off(ThirdPage()),
        onPressed: (){},
         child: Text('Go to third page and remove this screen from the stack'),
       )
       
      ],),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
        FloatingActionButton(child: Icon(Icons.add),    heroTag: null, onPressed: () => myAppController.increament(),),
        SizedBox(height: 10.0,),
         FloatingActionButton(child: Icon(Icons.remove),    heroTag: null, onPressed: () => myAppController.decreament(),),

      ],),
    );
  }
}