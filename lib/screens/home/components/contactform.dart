import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shanmukha_portfolio/constants.dart';
import 'package:shanmukha_portfolio/utility/utility_methods.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  FocusNode nameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode subjectFocus = FocusNode();
  FocusNode messageFocus = FocusNode();

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    subjectController.dispose();
    messageController.dispose();
    nameFocus.dispose();
    emailFocus.dispose();
    subjectFocus.dispose();
    messageFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Me",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                children: [
                  const Text("<", style: TextStyle(
                      fontWeight: FontWeight.w500, color: primaryColor
                  ),),
                  AnimatedTextKit(
                      isRepeatingAnimation: true,
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          "Always happy to hear from you",
                          speed: const Duration(milliseconds: 60),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white
                          )
                        ),
                      ]),
                  const Text("/>", style: TextStyle(
                      fontWeight: FontWeight.w500, color: primaryColor
                  ),),
                ],
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            TextFormField(
              controller: nameController,
              focusNode: nameFocus,
              cursorColor: primaryColor,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: primaryColor,
                ),
                hintText: 'Enter your name',
                labelText: 'Name',
                labelStyle: labelTextStyle,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: primaryColor),
                ),
                focusColor: primaryColor,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r"[a-zA-Z]+|\s"),
                )
              ],
              validator: (value) {
                if ((value != null && !value.isValidName) || (value != null && value.toString().length < 3)) {
                  return "Enter valid name";
                }
                return null;
              },
              onFieldSubmitted: (_) {
                _fieldFocusChange(context, nameFocus, emailFocus);
              },
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            TextFormField(
              controller: emailController,
              focusNode: emailFocus,
              cursorColor: primaryColor,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: primaryColor,
                ),
                hintText: 'Enter your email',
                labelText: 'Email',
                labelStyle: labelTextStyle,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: primaryColor),
                ),
                focusColor: primaryColor,
              ),
              validator: (value) {
                if (value != null && !value.isValidEmail) {
                  return "Enter valid email";
                }
                return null;
              },
              onFieldSubmitted: (_) {
                _fieldFocusChange(context, emailFocus, subjectFocus);
              },
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            TextFormField(
              controller: subjectController,
              focusNode: subjectFocus,
              cursorColor: primaryColor,
              maxLines: 1,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.subject,
                  color: primaryColor,
                ),
                hintText: 'Enter subject',
                labelText: 'Subject',
                labelStyle: labelTextStyle,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: primaryColor),
                ),
                focusColor: primaryColor,
              ),
              validator: (value) {
                if (value == null || value.isEmpty || value.toString() == "") {
                  return "Enter valid subject";
                }
                return null;
              },
              onFieldSubmitted: (_) {
                _fieldFocusChange(context, subjectFocus, messageFocus);
              },
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            TextFormField(
              controller: messageController,
              focusNode: messageFocus,
              cursorColor: primaryColor,
              maxLines: 5,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.message,
                  color: primaryColor,
                ),
                hintText: 'Enter message',
                labelText: 'Message',
                labelStyle: labelTextStyle,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: primaryColor),
                ),
                focusColor: primaryColor,
              ),
              validator: (value) {
                if (value == null || value.isEmpty || value.toString() == "") {
                  return "Enter valid message";
                }
                return null;
              },
              onFieldSubmitted: (_) {
                messageFocus.unfocus();
              },
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        isLoading = true;
                      });
                      await sendEmail(
                              name: nameController.text,
                              email: emailController.text,
                              subject: subjectController.text,
                              message: messageController.text,
                              toEmail: "shanmukhapanyam10@gmail.com")
                          .then((value) {
                        const snackBar = SnackBar(
                          content: Text('Mail Successfully Sent'),
                          backgroundColor: primaryColor,
                          elevation: 10,
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(5),
                        );
                        setState(() {
                          isLoading = false;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    }
                  },
                  child: FittedBox(
                    child: isLoading == true
                        ? const SizedBox(
                            height: 35,
                            width: 35,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : Row(
                            children: const [
                              Text(
                                "Submit",
                                style: TextStyle(color: submitButtonTextColor),
                              ),
                              SizedBox(
                                width: defaultPadding / 2,
                              ),
                              Icon(Icons.check_circle, color: submitButtonTextColor,),
                            ],
                          ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: const Size(100, 50),
                    elevation: 3,
                    textStyle: const TextStyle(color: submitButtonTextColor),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

extension ExtString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        RegExp(r"^[A-Za-z]+((\s)?((\'|\-|\.)?([A-Za-z])+))*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}
