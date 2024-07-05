import 'dart:convert';
import 'dart:html' as html;
import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:shanmukha_portfolio/.configkeys.dart';

download(url) {
  html.AnchorElement anchorElement = html.AnchorElement(href: url);
  anchorElement.download = "Shanmukha_Resume";
  anchorElement.click();
  anchorElement.remove();
}

openLinkInOtherTab(url) {
  html.window.open(url, "_blank");
}

Future<String> sendEmail({
  required String name,
  required String email,
  required String subject,
  required String message,
  required String toEmail,
}) async {
  const serviceId = "service_oyj7il4";
  const templateId = "template_vsi0gti";
  const userId = "-idbK1wHTFvXTcjwZ";

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await http.post(url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_subject': subject,
            'user_message': message,
            'to_email': toEmail,
          }
        },
      ));
  return response.body;
}

Future<EmailJSResponseStatus> sendEmailNew({
  required String name,
  required String email,
  required String subject,
  required String message,
  required String toEmail,
}) async {
  try {
    final res = await emailjs.send(
      serviceID,
      templateID,
      {
        'user_name': name,
        'user_email': email,
        'user_subject': subject,
        'user_message': message,
        'to_email': toEmail,
      },
      emailjs.Options(
          publicKey: publicKey,
          privateKey: privateKey,
          limitRate: const emailjs.LimitRate(
            id: 'app',
            throttle: 10000,
          )),
    );
    print('response! - ${res.toString()}');
    return res;
  } catch (error) {
    if (error is emailjs.EmailJSResponseStatus) {
      print('ERROR... $error');
    }
    print(error.toString());
    rethrow;
  }
}

String calculateAge(DateTime birthDate) {
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - birthDate.year;
  int month1 = currentDate.month;
  int month2 = birthDate.month;
  if (month2 > month1) {
    age--;
  } else if (month1 == month2) {
    int day1 = currentDate.day;
    int day2 = birthDate.day;
    if (day2 > day1) {
      age--;
    }
  }
  return age.toString();
}

Widget leftRightButtons(
    {required AlignmentGeometry alignment,
    required VoidCallback onPressed,
    required IconData icon}) {
  return Align(
      alignment: alignment,
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
      ));
}
