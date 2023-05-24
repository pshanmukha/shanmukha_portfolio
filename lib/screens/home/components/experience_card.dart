import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/models/experience.dart';


class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key, required this.recommendation,
  }) : super(key: key);

  final Experience recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
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
                  recommendation.companyName!,
                  style: Theme.of(context).textTheme.subtitle2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(recommendation.designation!,maxLines: 1,overflow: TextOverflow.ellipsis,),
                Text(
                  recommendation.shift!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(height: 1.5),
                ),
                Text(
                  recommendation.timeLine!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(height: 1.5),
                ),
                Text(
                  recommendation.location!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}