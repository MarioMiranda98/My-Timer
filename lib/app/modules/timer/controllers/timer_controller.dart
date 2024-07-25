import 'dart:convert';

import 'package:get/get.dart';
import 'package:my_timer/app/data/models/time_input_model.dart';

class TimerController extends GetxController {
  late TimeInputModel timeModel;

  @override
  void onInit() {
    final data = Get.parameters;
    final convertedData = json.decode(data['data'] ?? '');
    timeModel = TimeInputModel.fromJson(convertedData);
    super.onInit();
  }
}
