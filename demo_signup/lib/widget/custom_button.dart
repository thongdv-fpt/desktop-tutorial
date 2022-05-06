import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final GestureTapCallback? onTap;
  final Color? backgroundColor;
  final Color? textColor;

  CustomButton({this.title, this.onTap, this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          
          // margin: EdgeInsets.symmetric(horizontal: 30),
          color: backgroundColor ?? Color(0xFF20C3AF),
          child: Center(
            child: Text(
              
              title ?? "",
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
          ),
        ));
  }
}
