import 'package:get/get.dart';

class AppController extends GetxController{
  var counter = 0.obs;
  void increament()=> counter.value++;
  void decreament ()=> counter.value--;
}
