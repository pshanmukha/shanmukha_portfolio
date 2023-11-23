// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/models/experience.dart';
import 'package:shanmukha_portfolio/screens/home/components/experience_card.dart';
import 'package:shanmukha_portfolio/utility/custom_scrollbar_with_singlechildscrollview.dart';
import 'package:shanmukha_portfolio/utility/utility_methods.dart';

class Experiences extends StatelessWidget {
  const Experiences({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController con = ScrollController();
    const cardSize = 360;
    final width = MediaQuery.of(context).size.width;
    moveLeft() {
      con.animateTo(con.offset - cardSize,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    }

    moveRight() {
      con.animateTo(con.offset + cardSize,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "Professional Experience",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CustomScrollbarWithSingleChildScrollView(
                controller: con,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    experienceList.length,
                    (index) => Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: ExperienceCard(
                          recommendation: experienceList[index],
                        )),
                  ),
                ),
              ),
              width <= 720
                  ? leftRightButtons(
                      alignment: Alignment.centerLeft,
                      onPressed: moveLeft,
                      icon: Icons.arrow_back_ios_new)
                  : const SizedBox.shrink(),
              width <= 720
                  ? leftRightButtons(
                      alignment: Alignment.centerRight,
                      onPressed: moveRight,
                      icon: Icons.arrow_forward_ios)
                  : const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
