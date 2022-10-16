import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class FlutterHeader extends StatelessWidget {
  const FlutterHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Flutter First".text.xl3.bold.color(context.theme.primaryColor).make(),
        "Trending Products".text.xl2.color(Vx.indigo500).make()
      ],
    );
  }
}