import 'package:get/get.dart';
import 'package:my_timer/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.HOME);
    });
  }
}
