import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "assets/images/bg.jpeg",
          fit: BoxFit.cover,
        ),
        Container(
          color: darkColor.withOpacity(0.66),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to my \nArt Space!",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white)
                    : Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
              ),
              if (Responsive.isMobileLarge(context))
                const SizedBox(
                  height: defaultPadding / 2,
                ),
              const MyBuildAnimatedText(),
              const SizedBox(
                height: defaultPadding,
              ),
              
            ],
          ),
        )
      ]),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context)) const SizedBox(
              width: defaultPadding / 2,
            ),
        
          Responsive.isMobile(context)? const Expanded(child: AnimatedBannerText()) : const AnimatedBannerText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedBannerText extends StatelessWidget {
  const AnimatedBannerText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
        isRepeatingAnimation: true,
        repeatForever: true,
        animatedTexts: [
      TyperAnimatedText(
        "I build Native and Cross-Platform Mobile app",
        speed: const Duration(milliseconds: 60),
      ),
    ]);
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(text: "<", children: [
        const TextSpan(
          text: "flutter",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        const TextSpan(text: ">"),
      ]),
    );
  }
}
