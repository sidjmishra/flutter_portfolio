import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutterportfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final helloWidget = "Hello, I'm"
        .text
        .blue700
        .xl
        .lineHeight(1)
        .size(context.isMobile ? 10 : 15)
        .bold
        .make()
        .shimmer();

    final nameWidget = "Siddhant\nMishra"
        .text
        .blue900
        .xl3
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();

    return SafeArea(
      child: VxBox(
          child: VStack([
            ZStack([
              PictureWid(),
              Row(
                children: [
                  VStack([
                    if (context.isMobile) 90.heightBox else 10.heightBox,
                    CustomAppBar().shimmer(primaryColor: Coolers.accentColor),
                    20.heightBox,
                    helloWidget,
                    5.heightBox,
                    nameWidget,
                    15.heightBox,
                    VxBox().color(Coolers.accentColor).size(60, 8).make(),
                    8.heightBox,
                    SocialAccounts(),
                  ]).pSymmetric(
                    h: context.percentWidth * 5,
                    v: 35,
                  ),
                  Expanded(
                    child: VxResponsive(
                      fallback: const Offstage(),
                      large: IntroductionWidget()
                          .pOnly(left: 20)
                          .h(context.percentHeight * 60),
                      medium: IntroductionWidget()
                          .pOnly(left: 20)
                          .h(context.percentHeight * 60),
                      xlarge: IntroductionWidget()
                          .pOnly(left: 20)
                          .h(context.percentHeight * 60),
                    ),
                  ),
                ],
              ).w(context.screenWidth),
            ]),
          ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Colors.white)
          .bgImage(DecorationImage(
        image: AssetImage('assets/damn.gif'),
        fit: BoxFit.cover,
      ))
          .make(),
    );
  }
}

class PictureWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: Container(
        padding: EdgeInsets.all(40.0),
        width: 240.0,
        child: Transform(
          alignment: Alignment.center,
          origin: Offset(context.percentWidth * 20,0),
          child: Image.asset('assets/me.png',
              fit: BoxFit.cover,
              height: context.percentHeight * 38),
          transform: Matrix4.rotationY(pi),
        ),
      ),

      web: Container(
        padding: EdgeInsets.only(top: 20.0, right: 10.0),
        width: 350,
        child: Transform(
          alignment: Alignment.center,
          origin: Offset(context.percentWidth * 33,0),
          child: Image.asset('assets/me.png',
              fit: BoxFit.cover,
              height: context.percentHeight * 55),
          transform: Matrix4.rotationY(pi),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.github,
        color: Colors.black,
      ).mdClick(() {
        launch('https://github.com/sidjmishra');
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.twitter,
        color: Colors.black,
      ).mdClick(() {
        launch('https://twitter.com/sidjmishra007');
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.black,
      ).mdClick(() {
        launch('https://www.linkedin.com/in/siddhant-mishra-021726181/');
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.black,
      ).mdClick(() {
        launch('https://www.instagram.com/_siddhant._.mishra_/');
      }).make(),
    ].hStack();
  }
}

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "- Introduction".text.black.widest.sm.make(),
          10.heightBox,
          "A Cross Platform Developer & Mentor. \nLove to mess with technologies,\nIn love with open source software softwares & application."
              .text
              .gray700
              .xl3
              .maxLines(7)
              .make()
              .w(context.isMobile
              ? context.screenWidth
              : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        RaisedButton(
          onPressed: () {
            launch('https://drive.google.com/open?id=1y0A4MDe27vuJd3R-x5KO8OVvFrkSuWJN');
          },
          child: "My Resume".text.make(),
          color: Coolers.accentColor,
          shape: Vx.roundedSm,
          hoverColor: Vx.blue700,
          textColor: Coolers.primaryColor,
        ).h(50),
      ],
      alignment: MainAxisAlignment.spaceAround,
    );
  }
}
