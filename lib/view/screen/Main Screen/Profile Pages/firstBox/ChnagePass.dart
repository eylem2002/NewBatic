// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:new_batic/controller/signup_controller.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/widget/compoents/bottoms/deff_button.dart';
import 'package:new_batic/view/widget/compoents/defaultFormField.dart';

// ignore: camel_case_types
class changePass extends StatefulWidget {
  const changePass({super.key});

  @override
  State<changePass> createState() => _chnagePassState();
}

// ignore: camel_case_types
class _chnagePassState extends State<changePass> {
  SignUpController signUpController = SignUpController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(9),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 15,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Change Password',
          style: TextStyle(
            fontSize: widthNHeight0(context, 1) * 0.055,
            fontWeight: FontWeight.bold,
            fontFamily: 'Kadwa',
          ),
        ),
      ),
      body: Form(
        key: signUpController.formKey,
        child: Column(
          children: [
            Divider(height: 1, color: Colors.grey[300]),
            Padding(
              padding: EdgeInsets.only(
                  left: widthNHeight0(context, 1) * 0.07,
                  right: widthNHeight0(context, 1) * 0.07,
                  top: widthNHeight0(context, 1) * 0.08),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Old Password",
                    style: TextStyle(
                        fontFamily: "kadwa",
                        fontWeight: FontWeight.w600,
                        fontSize: widthNHeight0(context, 1) * 0.045),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.015,
                  ),
                  TextFormWidget(
                    height: widthNHeight0(context, 1)*0.2,
                    width: double.infinity,
                    passToggle: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password must not be empty ';
                      } else if (value < 8) {
                        return 'Password must not greater than 8';
                      }
                      return null;
                    },
                    passController: signUpController.email,
                    str: 'Batic',
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.03,
                  ),
                  Text(
                    "New Password",
                    style: TextStyle(
                        fontFamily: "kadwa",
                        fontWeight: FontWeight.w600,
                        fontSize: widthNHeight0(context, 1) * 0.045),
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.015,
                  ),
                  TextFormWidget(
                  height: widthNHeight0(context, 1)*0.2,
                    width: double.infinity,
                    passToggle: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password must not be empty ';
                      } else if (value < 8) {
                        return 'Password must not greater than 8';
                      }
                      return null;
                    },
                    passController: signUpController.password,
                    str: 'Batic',
                  ),
                  SizedBox(
                    height: widthNHeight0(context, 1) * 0.2,
                  ),
                  Center(
                    child: defaultButton(
                      text: 'Update',
                      function: () {
                        if (signUpController.formKey.currentState!
                            .validate()) {}
                      },
                      onPressed: () {},
                      borderWidth: 10,
                      width: widthNHeight0(context, 1) * 0.65,
                      height: widthNHeight0(context, 1) * 0.12,
                      borderRadius: 5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
