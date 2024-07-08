import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_timer/app/resources/theme_manager.dart';
import 'package:my_timer/app/routes/app_pages.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Timer",
      theme: ThemeManager.getApplicationTheme(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
