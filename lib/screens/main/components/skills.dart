import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/components/animated_progress_indicator.dart';
import 'package:shanmukha_portfolio/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Row(
          children: [
            Expanded(
                child: AnimatedCircularProgressIndicator(
              label: "Flutter",
                  url: "https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg",
                  percentage: 1.0,
            )),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedCircularProgressIndicator(
              label: "Firebase",
                  url: "https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg",
                  percentage: 1.0,
            )),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                child: AnimatedCircularProgressIndicator(
              label: "ReactJS",
                  url: "https://www.vectorlogo.zone/logos/reactjs/reactjs-icon.svg",
                  percentage: 1.0,
            )),
          ],
        ),
      ],
    );
  }
}
