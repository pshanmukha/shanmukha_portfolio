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
    bool isHover = false;
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
                        onPressed: () {

                        },
                        child: GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Download CV",
                                style: TextStyle(color: primaryColor),
                              ),
                              const SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset("assets/icons/download.svg",color: Colors.white,)
                            ],
                          ),
                          onTap: () => download(resume),
                        ),
                      ),
                      Material(
                        elevation: 50,
                        color: isHover ? tileBgColor : bgColor,
                        animationDuration: const Duration(seconds: 200),
                        child: InkWell(
                          onHover: (val) {
                            setState(() {
                              isHover = val;
                            });
                          },
                          onTap: () {},
                          child: Container(
                            color: Colors.transparent/*const Color(0xFF24242E)*/,
                            child: Row(children: [
                              const Spacer(),
                              IconButton(
                                onPressed: () => openLinkInOtherTab(linkedIn),
                                splashRadius: 20,
                                icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                              ),
                              IconButton(
                                onPressed: () => openLinkInOtherTab(github),
                                splashRadius: 20,
                                icon: SvgPicture.asset("assets/icons/github.svg",),
                              ),
                              IconButton(
                                onPressed: () => openLinkInOtherTab(twitter),
                                splashRadius: 20,
                                icon: SvgPicture.asset("assets/icons/twitter.svg"),
                              ),
                              const Spacer(),
                            ]),
                          ),
                        ),
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
