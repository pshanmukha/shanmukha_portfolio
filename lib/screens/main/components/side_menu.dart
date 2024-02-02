import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/screens/main/components/area_info_text.dart';
import 'package:shanmukha_portfolio/screens/main/components/coding.dart';
import 'package:shanmukha_portfolio/screens/main/components/knowledges.dart';
import 'package:shanmukha_portfolio/screens/main/components/my_info.dart';
import 'package:shanmukha_portfolio/screens/main/components/resume_download.dart';
import 'package:shanmukha_portfolio/screens/main/components/skills.dart';
import 'package:shanmukha_portfolio/screens/main/components/social_icon_buttons.dart';
import 'package:shanmukha_portfolio/utility/custom_scrollbar_with_singlechildscrollview.dart';
import 'package:shanmukha_portfolio/utility/utility_methods.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
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
                child: Container(
                  color: bgColor,
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
                      const ResumeDownload(),
                      const SocialIconButtons(),
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
