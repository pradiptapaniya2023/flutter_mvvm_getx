import 'package:flutter/material.dart';
import 'package:flutter_mvvm_getx/res/getx_loclization/languages.dart';
import 'package:flutter_mvvm_getx/res/routes/routes.dart';
import 'package:flutter_mvvm_getx/view/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter MVVM",
      translations: Languages(),
      locale: Locale('en' , 'US'),
      fallbackLocale: Locale('en' , 'US'),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
