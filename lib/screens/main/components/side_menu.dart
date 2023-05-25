import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/screens/main/components/area_info_text.dart';
import 'package:shanmukha_portfolio/screens/main/components/coding.dart';
import 'package:shanmukha_portfolio/screens/main/components/knowledges.dart';
import 'package:shanmukha_portfolio/screens/main/components/my_info.dart';
import 'package:shanmukha_portfolio/screens/main/components/skills.dart';
import 'package:shanmukha_portfolio/utility/custom_scrollbar_with_singlechildscrollview.dart';
import 'package:shanmukha_portfolio/utility/utility_methods.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: CustomScrollbarWithSingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      const AreaInfoText(
                        title: "Residence",
                        text: "India",
                      ),
                      const AreaInfoText(
                        title: "City",
                        text: "Ongole",
                      ),
                       AreaInfoText(
                        title: "Age",
                        text: calculateAge(DateTime(2000, 12, 3)),
                      ),
                      const Skills(),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      const Coding(),
                      const Knowledges(),
                      const Divider(),
                      const SizedBox(
                        height: defaultPadding / 2,
                      ),
                      TextButton(
                        onPressed: () => download(resume),
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "Download CV",
                                style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyLarge!.color,
                                ),
                              ),
                              const SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset("assets/icons/download.svg")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: defaultPadding),
                        color: const Color(0xFF24242E),
                        child: Row(children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () => openLinkInOtherTab(linkedIn),
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () => openLinkInOtherTab(github),
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () => openLinkInOtherTab(twitter),
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          const Spacer(),
                        ]),
                      )
                    ],
                  ),
                ),
              ),),
          ],
        ),
      ),
    );
  }
}
