import 'package:flutter/material.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/models/certifications.dart';
import 'package:shanmukha_portfolio/responsive.dart';

import 'package:shanmukha_portfolio/utility/utility_methods.dart';

class CertificateCard extends StatefulWidget {
  const CertificateCard({
    Key? key,
    required this.certificate,
  }) : super(key: key);

  final Certificate certificate;

  @override
  State<CertificateCard> createState() => _CertificateCardState();
}

class _CertificateCardState extends State<CertificateCard> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    return Material(
      elevation: 50,
      color: isHover 
      ? tileBgColor 
      : bgColor,
      animationDuration: const Duration(seconds: 200),
      child: InkWell(
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
        onTap: () {
          openLinkInOtherTab(widget.certificate.verifyLink!);
        },
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          color: Colors.transparent,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              widget.certificate.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Spacer(),
            Text(
              widget.certificate.description!,
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
                  openLinkInOtherTab(widget.certificate.verifyLink!);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
