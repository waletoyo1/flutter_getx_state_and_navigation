import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class AppController extends GetxController{
  var counter = 0.obs;
  void increament()=> counter.value++;
  void decreament ()=> counter.value--;
}

class MyApp extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Home()
    );
  }
}



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