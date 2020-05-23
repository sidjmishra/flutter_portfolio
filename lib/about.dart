import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutterportfolio/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack([
      VxDevice(
        mobile: Container(
          child: VStack([
            10.heightBox,
            Container(
              child: Center(
                child: VxBox()
                    .color(Coolers.accentColor)
                    .size(80, 2)
                    .shadow
                    .make(),
              ),
            ),
            10.heightBox,
            Container(
              child: Center(
                child: Text(
                  "About Me",
                  style: TextStyle(
                    color: Vx.blue900,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Container(
              height: 300.0,
              child: Center(
                child: VStack([
                  "Currently pursuing Degree in Computer Engineering. Have a keen interest in programming and playing around with technology. I love development, be it website's or apps and also ui designing. I Love open source sofware."
                      .text
                      .xl2
                      .black
                      .maxLines(7)
                      .make()
                      .p16(),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    child: VStack([
                      HStack([
                        Birth(),
                        7.widthBox,
                        Mail(),
                      ]),
                      5.heightBox,
                      HStack([
                        Phone(),
                        7.widthBox,
                        Address(),
                      ]),
                    ]),
                  ),
                ]),
              ),
            ),
            10.heightBox,
            Center(
              child:
              VxBox().color(Coolers.accentColor).size(80, 2).shadow.make(),
            ),
            Container(
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Transform(
                origin: Offset(context.percentWidth * 45, 0),
                child: Image.asset('assets/progress.png',
                    fit: BoxFit.fill,
                    width: context.percentWidth * 150,
                    height: context.percentHeight * 40),
                transform: Matrix4.rotationY(0),
              ),
            ),
          ]),
        ),
        web: VStack(
          [
            15.heightBox,
            Container(
              child: Center(
                child: VxBox()
                    .color(Coolers.accentColor)
                    .size(80, 2)
                    .shadow
                    .make(),
              ),
            ),
            10.heightBox,
            Container(
              child: Center(
                child: Text(
                  "About Me",
                  style: TextStyle(
                    color: Vx.blue900,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            context.isLandscape
                ? HStack([
              Center(
                child: VStack([
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    width: 500.0,
                    height: 300.0,
                    child: Center(
                      child: VStack([
                        "Hello, there I'm Siddhant Mishra,"
                            .text
                            .xl
                            .gray700
                            .make(),
                        "Currently pursuing Degree in Computer Engineering. Have a keen interest in programming and playing around with technology.\nI love development, be it website's or apps and also ui designing. I Love open source sofware."
                            .text
                            .xl2
                            .black
                            .maxLines(6)
                            .make(),
                        Container(
                          padding: EdgeInsets.all(12.0),
                          child: VStack([
                            HStack([
                              Birth(),
                              60.widthBox,
                              Mail(),
                            ]),
                            10.heightBox,
                            HStack([
                              Phone(),
                              55.widthBox,
                              Address(),
                            ]),
                          ]),
                        ),
                      ]),
                    ),
                  ),
                ]),
              ),
              Container(
                width: 600,
                padding: EdgeInsets.only(left: 25.0, right: 15.0),
                child: Transform(
                  origin: Offset(context.percentWidth * 35, 0),
                  child: Image.asset('assets/progress.png',
                      fit: BoxFit.fill,
                      width: context.percentWidth * 35,
                      height: context.percentHeight * 35),
                  transform: Matrix4.rotationY(0),
                ),
              ),
            ])
                : VStack(
              [
                Center(
                  child: VStack([
                    Container(
                      padding: EdgeInsets.only(left: 30.0),
                      width: 600.0,
                      height: 300.0,
                      child: Center(
                        child: VStack([
                          "Hello, there I'm Siddhant Mishra,"
                              .text
                              .xl
                              .gray700
                              .make(),
                          "Currently pursuing Degree in Computer Engineering. Have a keen interest in programming and playing around with technology.\nI love development, be it website's or apps and also ui designing. I Love open source sofware."
                              .text
                              .xl2
                              .black
                              .maxLines(6)
                              .make(),
                          Container(
                            padding: EdgeInsets.all(12.0),
                            child: VStack([
                              HStack([
                                Birth(),
                                60.widthBox,
                                Mail(),
                              ]),
                              10.heightBox,
                              HStack([
                                Phone(),
                                55.widthBox,
                                Address(),
                              ]),
                            ]),
                          ),
                        ]),
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  width: 650.0,
                  child: Transform(
                    origin: Offset(context.percentWidth * 25, 0),
                    child: Image.asset('assets/progress.png',
                        fit: BoxFit.fill,
                        width: context.percentWidth * 100,
                        height: context.percentHeight * 35),
                    transform: Matrix4.rotationY(0),
                  ),
                ),
              ],
              alignment: MainAxisAlignment.center,
              crossAlignment: CrossAxisAlignment.center,
            ),
            20.heightBox,
          ],
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        ),
      ),
    ]);
  }
}

class Birth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HStack([
      Icon(
        AntDesign.calendar,
        size: 15,
        color: Vx.blue700,
      ),
      5.widthBox,
      Text(
        "25 March, 2001",
        style: TextStyle(
          color: Vx.gray600,
          fontSize: 15,
        ),
      ),
    ]);
  }
}

class Mail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HStack([
      Icon(
        AntDesign.mail,
        size: 15,
        color: Vx.blue700,
      ),
      5.widthBox,
      Text(
        "sidjmishra007@gmail.com",
        style: TextStyle(
          color: Vx.gray600,
          fontSize: 15,
        ),
      ),
    ]);
  }
}

class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HStack([
      Icon(
        AntDesign.phone,
        size: 15,
        color: Vx.blue700,
      ),
      5.widthBox,
      Text(
        "+91 - 9967120351",
        style: TextStyle(
          color: Vx.gray600,
          fontSize: 15,
        ),
      ),
    ]);
  }
}

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HStack([
      Icon(
        AntDesign.home,
        size: 15,
        color: Vx.blue700,
      ),
      5.widthBox,
      Text(
        "Mira Road. Thane. India",
        style: TextStyle(
          color: Vx.gray600,
          fontSize: 15,
        ),
      ),
    ]);
  }
}
