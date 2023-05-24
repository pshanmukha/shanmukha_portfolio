import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shanmukha_portfolio/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(text: "Flutter",),
        const KnowledgeText(text: "Git",),
        const KnowledgeText(text: "Firebase",),
        const KnowledgeText(text: "AWS",),
        const KnowledgeText(text: "React (just learning)",),
        const KnowledgeText(text: "Node JS (just learning)",),
        const KnowledgeText(text: "Express JS",),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.check, color: primaryColor,),
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(text),
      ],
    );
  }
}