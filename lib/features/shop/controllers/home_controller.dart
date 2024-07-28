import 'package:get/get.dart';

class HomeControllerBanner extends GetxController {
  static HomeControllerBanner get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}
