import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/components/animated_progress_container.dart';
import 'package:shanmukha_portfolio/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            AnimatedProgressContainer(codeSkill: "Dart",),
            AnimatedProgressContainer(codeSkill: "Python",),
            AnimatedProgressContainer(codeSkill: "HTML",),
            AnimatedProgressContainer(codeSkill: "CSS",),
            AnimatedProgressContainer(codeSkill: "JavaScript ",),
          ],
        ),

      ],
    );
  }
}