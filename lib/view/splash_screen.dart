import 'package:flutter/material.dart';
import 'package:flutter_mvvm_getx/res/assets/images_assets.dart';
import 'package:flutter_mvvm_getx/res/components/internet_exception_widget.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // return InternetExceptionWidget();

    return Scaffold(
        appBar: AppBar(
          title: Text('email_hint'.tr),
        ),
        body: InternetExceptionWidget());
  }
}
