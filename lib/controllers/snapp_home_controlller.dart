import 'package:get/get.dart';

class SnappHomeController extends GetxController {
  RxInt selectedIndexSlider = 0.obs;

  void changeSlider(value){
    selectedIndexSlider.value = value;
  }
  
}
