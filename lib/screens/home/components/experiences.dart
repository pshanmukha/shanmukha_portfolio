import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/models/experience.dart';
import 'package:shanmukha_portfolio/screens/home/components/experience_card.dart';
import 'package:shanmukha_portfolio/utility/custom_scrollbar_with_singlechildscrollview.dart';

class Experiences extends StatelessWidget {
  const Experiences({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    ScrollController con = ScrollController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:defaultPadding),
            child: Text(
              "Professional Experience",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          CustomScrollbarWithSingleChildScrollView(
            controller: con,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                experienceList.length,
                    (index) => Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: ExperienceCard(recommendation: experienceList[index],)),
              ),
            ),
          )
        ],
      ),
    );
  }
}