import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutterportfolio/colors.dart';
import 'package:flutterportfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              Center(
                child: VxBox()
                    .color(Coolers.accentColor)
                    .size(80, 2)
                    .shadow
                    .make(),
              ),
              "Got a project or need help?\nLet's talk."
                  .text
                  .center
                  .blue900
                  .xl2
                  .make(),
              // 5.heightBox,
              Information(),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),

          // Web
          web: VStack(
            [
              Center(
                child: VxBox()
                    .color(Coolers.accentColor)
                    .size(80, 2)
                    .shadow
                    .make(),
              ),
              10.heightBox,
              "Got a project or need help?\nLet's talk."
                  .text
                  .blue900
                  .xl3
                  .make(),
              25.heightBox,
              Information(),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
        ),
        50.heightBox,
        CustomAppBar().shimmer(primaryColor: Coolers.accentColor),
        10.heightBox,
        "Siddhant Mishra"
            .text
            .bold
            .blue900
            .make()
            .shimmer(primaryColor: Coolers.accentColor),
        10.heightBox,
        "Thanks for scrolling, "
            .richText
            .semiBold
            .gray600
            .withTextSpanChildren(["That's all folks.".textSpan.gray600.make()])
            .center
            .make(),
        10.heightBox,
        SocialAccounts(),
        30.heightBox,
        [
          "Made in India with".text.red500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      alignment: MainAxisAlignment.center,
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}

// Information
class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: context.isLandscape ? VStack([
        //Address
        Address(),
        5.heightBox,
        // Phone Number
        Phone(),
        5.heightBox,
        // Email
        Email(),
      ]) :
      VStack([
        //Address
        Address(),
        5.heightBox,
        // Phone Number
        Phone(),
        5.heightBox,
        // Email
        Email(),
      ]),

      // Web
      web: context.isLandscape ? HStack([
        // Address
        Address(),
        10.widthBox,
        // Phone Number
        Phone(),
        10.widthBox,
        // Email
        Email(),
      ],
        alignment: MainAxisAlignment.spaceEvenly,
        crossAlignment: CrossAxisAlignment.center,
      ).w(context.safePercentWidth * 120) :
      VStack([
        // Address
        Address(),
        10.widthBox,
        // Phone Number
        Phone(),
        10.widthBox,
        // Email
        Email(),
      ],
        alignment: MainAxisAlignment.spaceEvenly,
        crossAlignment: CrossAxisAlignment.center,
      ).w(context.safePercentWidth * 120),
    );
  }
}

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 200,
      child: Center(
        child: VStack([
          Center(
            child: Icon(
              AntDesign.home,
              color: Coolers.accentColor,
              size: 22,
            ),
          ),
          5.heightBox,
          Center(
            child: Text(
              "Address",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          5.heightBox,
          Center(
            child: Text(
              "Mira Road (East). Thane - 401107.\nMaharashtra. India",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
          ),
        ]),
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          side: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 200,
      child: Center(
        child: VStack([
          Center(
            child: Icon(
              AntDesign.mobile1,
              color: Coolers.accentColor,
              size: 22,
            ),
          ),
          5.heightBox,
          Center(
            child: Text(
              "Phone Number",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          5.heightBox,
          Center(
            child: Text(
              "+91 - 9967120351\n+91 - 9967120371",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
          ),
        ]),
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          side: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 200,
      child: Center(
        child: VStack([
          Center(
            child: Icon(
              AntDesign.mail,
              color: Coolers.accentColor,
              size: 22,
            ),
          ),
          5.heightBox,
          Center(
            child: Text(
              "Email Address",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          5.heightBox,
          Center(
            child: Text(
              "-sidjmishra007@gmail.com\n-sidjmishra007@student.sfit.ac.in",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
        ]),
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          side: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}