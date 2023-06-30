import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:car_catalogue/app/modules/home/views/home_view.dart';
import 'package:car_catalogue/app/modules/signin/views/signin_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/logo.png'),
      
      nextScreen: SigninView(),

      duration: 2000,
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 200,
    );
  }
}
