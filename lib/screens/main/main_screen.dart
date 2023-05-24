import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/responsive.dart';
import 'package:shanmukha_portfolio/screens/main/components/side_menu.dart';
import 'package:shanmukha_portfolio/utility/custom_scrollbar_with_singlechildscrollview.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                );
              }),
        title: SizedBox(
          width: 250,
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('SHANMUKHA'),
              RotateAnimatedText('PRASAD'),
              RotateAnimatedText('SHANMUKHA PRASAD'),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
        ),
        centerTitle: true,
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              Expanded(
                flex: 7,
                child: CustomScrollbarWithSingleChildScrollView(
                  controller: ScrollController(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [...children],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
