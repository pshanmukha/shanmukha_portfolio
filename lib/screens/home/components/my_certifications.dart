import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/models/certications.dart';
import 'package:shanmukha_portfolio/responsive.dart';
import 'package:shanmukha_portfolio/screens/home/components/certification_card.dart';

class MyCertifications extends StatelessWidget {
  const MyCertifications({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:defaultPadding),
          child: Text(
            "My Certifications",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: CertificateGridView(crossAxisCount: 1,childAspectRatio: 1.7,),
            mobileLarge: CertificateGridView(
              crossAxisCount: 2,
            ),
            tablet: CertificateGridView(
              childAspectRatio: 1.2,
            ),
            desktop: CertificateGridView()),
      ],
    );
  }
}

class CertificateGridView extends StatelessWidget {
  const CertificateGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: ScrollController(),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: certificateList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) {
        return CertificateCard(
          certificate: certificateList[index],
        );
      },
    );
  }
}
