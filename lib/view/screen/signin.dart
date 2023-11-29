import 'package:flutter/material.dart';
import 'package:new_batic/core/constant/imageAsses.dart';
import 'package:new_batic/view/screen/Home.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';
import '../../core/constant/login_controller.dart';
import 'signup_screen.dart';

class LogIN extends StatefulWidget {
  const LogIN({super.key});

  @override
  State<LogIN> createState() => _LogINState();
}

class _LogINState extends State<LogIN> {


  bool? isChecked = false;
  bool passToggle = true;
  TextController textController = TextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEBEF),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 75),
          height: widthNHeight0(context, 0),
          child: Form(
              key: textController.formField,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: widthNHeight0(context, 1)*0.55,
                      height: widthNHeight0(context, 0)*0.15,
                      child: Image.asset(ImageAsses.logo),
                    ),
                    SizedBox(
                      height: widthNHeight0(context, 0)*0.32,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: widthNHeight0(context, 1) * 0.70,
                                bottom:widthNHeight0(context, 0) * 0.01),
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xff263238),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Kadwa'),
                            ),
                          ),

                          TextFormFieldWidget(
                              passToggle: false,
                              passController: textController.controllerEmail,
                              label_text: 'Email',
                              validat: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Email";
                                }
                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.1#$&'*+-/=?^_ {|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value);
                                if (!emailValid) {
                                  return "Enter valid Email";
                                }
                                return null;
                              },
                              str: " Enter Email"),

                          TextFormFieldWidget(
                              passToggle: true,
                              passController: textController.controllerPass,
                              label_text: 'password',
                              validat: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Password";
                                } else if (value.length < 6) {
                                  return "Password length should be more than 6 characters";
                                } else {
                                  return null;
                                }
                              },
                              str: " Enter Password")
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        SizedBox(
                          width: widthNHeight0(context, 1)*0.85,
                          child: InkWell(
                            onTap: () {
                              if (textController.formField.currentState!.validate()) {
                                textController.controllerEmail.clear();
                                textController.controllerPass.clear();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Home_page()));
                              }
                            },
                            child: Container(
                              height: widthNHeight0(context, 0) * .08,
                              width: widthNHeight0(context, 0) * 0.7,
                              //////////////////edit the width
                              decoration: BoxDecoration(
                                  color: const Color(0xff6482C4),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Kadwa',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontFamily: 'Kadwa'),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not a member?",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * .033,
                              fontFamily: 'Kadwa',
                              color: Colors.grey[600]),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SingUpScreen(),
                                  ));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * .033,
                                  fontFamily: 'Kadwa',
                                  color: Colors.grey[700]),
                            ))
                      ],
                    ),
                  ])),
        ),
      ),
    );
  }
}

double widthNHeight0(BuildContext context, int number) {
  if (number == 0) {
    return MediaQuery.of(context).size.height;
  } else {
    return MediaQuery.of(context).size.width;
  }
}
