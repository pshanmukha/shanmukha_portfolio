import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/models/projects.dart';
import 'package:shanmukha_portfolio/responsive.dart';
import 'package:shanmukha_portfolio/utility/utility_methods.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({Key? key, required this.project}) : super(key: key);
  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    return Material(
      elevation: 50,
      color: isHover ? tileBgColor :bgColor,
      animationDuration: const Duration(seconds: 200),
      child: InkWell(
        onHover: (val) {
            setState(() {
              isHover = val;
            });
        },
        onTap: () {
          openLinkInOtherTab(widget.project.link!);
        },
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          color: Colors.transparent,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              widget.project.name!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Spacer(),
            Text(
              widget.project.description!,
              maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(height: 1.5),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: GestureDetector(
                child: const Text(
                  "Read More >>",
                  style: TextStyle(color: primaryColor),
                ),
                onTap: () {
                  openLinkInOtherTab(widget.project.link!);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
