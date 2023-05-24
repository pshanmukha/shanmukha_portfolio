import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/models/certications.dart';
import 'package:shanmukha_portfolio/responsive.dart';

import 'package:shanmukha_portfolio/utility/utility_methods.dart';

class CertificateCard extends StatelessWidget {
  const CertificateCard({
    Key? key,
    required this.certificate,
  }) : super(key: key);

  final Certificate certificate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
      certificate.title!,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.subtitle2,
          ),
        const Spacer(),
        Text(
      certificate.description!,
      maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(height: 1.5),
          ),
        const Spacer(),
        TextButton(
      onPressed: () {},
      child: GestureDetector(
        child: Text(
          "Read More >>",
          style: TextStyle(color: primaryColor),
        ),
        onTap: () {
          openLinkInOtherTab(certificate.verifyLink!);
        },
      ),
          ),
        ]),
    );
  }
}
