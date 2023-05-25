//import 'dart:html';
import 'dart:convert';
import 'dart:html' as html;
import 'package:http/http.dart' as http;

download(url) {
  html.AnchorElement anchorElement = html.AnchorElement(href: url);
  anchorElement.download = "Shanmukha_Resume";
  anchorElement.click();
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
    final response = await http.post(
        url,
      headers: {
          'Content-Type': 'application/json',
      },
      body: json.encode({
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
      },)
    );
    return response.body;
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
