import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.blue700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "All Creative works,\n"
              .richText
              .withTextSpanChildren(
              ["Something Productive xD.".textSpan.yellow400.make()])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                ProjectWidget(title: "BreastCancer Prediction using ML"),
                ProjectWidget(title: "Sentiment Analysis using Twitter"),
                ProjectWidget(title: "RideShare for Farmers"),
                ProjectWidget(title: "Justice Restoration System"),
                ProjectWidget(title: "WasIhacked.net"),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  ProjectWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(
      color: Vx.blue700,
      elevation: 5.0,
      curve: VxCurve.flat,
    )
        .make()
        .p16();
  }
}
