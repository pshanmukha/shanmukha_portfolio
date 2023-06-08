import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/components/zoom_image_on_hover.dart';
import 'package:shanmukha_portfolio/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2/2.5,
      child: Container(
        color: bgColor/*const Color(0xFF242430)*/,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const HoverImage(
              image: 'assets/images/mypic.jpg',
            ),
            const Spacer(),
            Text(
              "Shanmukha Guru Prasad",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              "Flutter Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            const Text(
              "AWS Certified Cloud Practitioner",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
