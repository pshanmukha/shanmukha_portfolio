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
      aspectRatio: Responsive.isMobile(context) ? 2.4 : 3,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "assets/images/bg.jpg",
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
                    ? Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold, color: titleTextColor)
                    : Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold, color: titleTextColor),
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
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "<shanmukha/>",
              style: Responsive.isDesktop(context)
                  ? signatureFont.displaySmall!.copyWith(
                  fontWeight: FontWeight.bold, color: titleTextColor, fontSize: 40.0)
                  : signatureFont.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold, color: titleTextColor, fontSize: 22.0),
            ),
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
      style: Theme.of(context).textTheme.titleMedium!,
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
        "I build Cross-Platform Mobile apps",
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
        TextSpan(
          text: "flutter",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        TextSpan(text: ">"),
      ]),
    );
  }
}
