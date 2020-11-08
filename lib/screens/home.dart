

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_getx_state_and_navigation/controller/controller.dart';
import 'secondpage.dart';

class Home extends StatelessWidget {
  final AppController myAppController = Get.put(AppController());
  _showSnackBar(){
    Get.snackbar('My Title', 'Hello World', snackPosition: SnackPosition.BOTTOM, backgroundColor:Colors.amber );
  }

  _showAlertDialog(){
    Get.defaultDialog(
      title: 'My Title',
      content: Text('My Content')

    );
  }
  _showBottomSheet(){
    Get.bottomSheet(
      Container(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Center(child: Text('My bottom sheet'),),
        ),
        color: Colors.white

      )
    );
  }
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

         RaisedButton(
         onPressed: () => _showSnackBar(),
         child: Text('Show Snack Bar'),
 
       ),
        RaisedButton(
         onPressed: () => _showAlertDialog(),
         child: Text('Show Alert Dialog'),
 
       ),
         RaisedButton(
         onPressed: () => _showBottomSheet(),
         child: Text('Show bottom sheet'),
 
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
