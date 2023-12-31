import 'package:flutter/material.dart';

Widget defaultButton2({
  double width = double.infinity,
  double height = 50.0,
  Color borderColor = const Color(0xffCCD8F4),
  Color background = const Color(0xffCCD8F4),
  Color textColor = Colors.black,
  final Function()? function,
  required String text,
  double fontSize = 20.0,
  double borderRadius = 0.0,
  required void Function() onPressed,
  required int borderWidth, // Change this line
}) => Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor),
        color: background,
      ),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
        onPressed: onPressed, // Change this line
        child: Text(
          text,
          style: TextStyle(

            fontWeight: FontWeight.w500,
            color: textColor,
            fontSize: fontSize,
            
            fontFamily: 'Kadwa',
          ),
        ),
      ),
    );
