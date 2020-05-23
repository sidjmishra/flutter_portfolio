import 'package:flutter/material.dart';
import 'package:flutterportfolio/about.dart';
import 'package:flutterportfolio/colors.dart';
import 'package:flutterportfolio/footer.dart';
import 'package:flutterportfolio/header.dart';
import 'package:flutterportfolio/middle.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p16(),
        AboutPage(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
