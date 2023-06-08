import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/models/experience.dart';
import 'package:shanmukha_portfolio/utility/utility_methods.dart';


class ExperienceCard extends StatefulWidget {
  const ExperienceCard({
    Key? key, required this.recommendation,
  }) : super(key: key);

  final Experience recommendation;

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
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
          openLinkInOtherTab(widget.recommendation.url);
        },
        child: Container(
          width: 360,
          padding: const EdgeInsets.all(defaultPadding),
          color: Colors.transparent,
          child: Row(
            children: [
              SizedBox(
                child:  Image.asset('assets/images/dimiour.jpg',height: 100,width: 100,),
              ),
              const SizedBox(
                width : defaultPadding,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.recommendation.companyName!,
                      style: Theme.of(context).textTheme.subtitle2,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(widget.recommendation.designation!,maxLines: 1,overflow: TextOverflow.ellipsis,),
                    Text(
                      widget.recommendation.shift!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(height: 1.5),
                    ),
                    Text(
                      widget.recommendation.timeLine!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(height: 1.5),
                    ),
                    Text(
                      widget.recommendation.location!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(height: 1.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}