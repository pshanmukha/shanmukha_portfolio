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
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const KnowledgeText(text: "Flutter", url: "https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg",),
        const KnowledgeText(text: "React JS",url: "https://www.vectorlogo.zone/logos/reactjs/reactjs-icon.svg",),
        const KnowledgeText(text: "Git",url: "https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg",),
        const KnowledgeText(text: "Firebase",url: "https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg",),
        const KnowledgeText(text: "AWS",url: "https://www.vectorlogo.zone/logos/amazon_aws/amazon_aws-icon.svg",),
        //const KnowledgeText(text: "Node JS",url: "https://www.vectorlogo.zone/logos/nodejs/nodejs-icon.svg",),
        //const KnowledgeText(text: "Express JS",url: "https://www.vectorlogo.zone/logos/expressjs/expressjs-icon.svg",),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
    required this.url,
  }) : super(key: key);

  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Row(
        children: [
          SvgPicture.network(url, width: 24,),
          //const Icon(Icons.check, color: primaryColor,),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}