import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/utility/utility_methods.dart';

class ResumeDownload extends StatelessWidget {
  const ResumeDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
                        onPressed: () {
                                    
                        },
                        child: GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Download CV",
                                style: TextStyle(color: primaryColor),
                              ),
                              const SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset("assets/icons/download.svg",color: Colors.white,)
                            ],
                          ),
                          onTap: () {
                            download(resume);
                            const snackBar = SnackBar(
                          content: Text('Resume will download in a few seconds...',textAlign: TextAlign.center,),
                          backgroundColor: primaryColor,
                          elevation: 10,
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(5),
                          duration: Duration(seconds: 2),
                        );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          } ,
                        ),
                      );
  }
}