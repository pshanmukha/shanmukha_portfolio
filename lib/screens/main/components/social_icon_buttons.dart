import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/utility/utility_methods.dart';

class SocialIconButtons extends StatefulWidget {
  const SocialIconButtons({Key? key}) : super(key: key);

  @override
  State<SocialIconButtons> createState() => _SocialIconButtonsState();
}

class _SocialIconButtonsState extends State<SocialIconButtons> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    return Material(
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
          color: Colors.transparent /*const Color(0xFF24242E)*/,
          child: Row(children: [
            const Spacer(),
            IconButton(
              onPressed: () => openLinkInOtherTab(linkedIn),
              splashRadius: 20,
              icon: SvgPicture.asset(
                "assets/icons/linkedin.svg",
                color: primaryColor,
              ),
            ),
            IconButton(
              onPressed: () => openLinkInOtherTab(github),
              splashRadius: 20,
              icon: SvgPicture.asset(
                "assets/icons/github.svg",
                color: primaryColor,
              ),
            ),
            IconButton(
              onPressed: () => openLinkInOtherTab(twitter),
              splashRadius: 20,
              icon: SvgPicture.asset(
                "assets/icons/twitter.svg",
                color: primaryColor,
              ),
            ),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}
