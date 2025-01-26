import '../const.dart';
import 'package:flutter/material.dart';

class CustomOtpAppBar extends StatelessWidget {
  const CustomOtpAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.4285714285714, 890.2857142857143)
    final double fontSize = screenSize.width * 0.0607638888888889; //25.0
    // ----------------------------------------
    return Container(
      height: screenSize.height * 0.07301026957638,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: kGradient,
          borderRadius: BorderRadius.only(
              bottomLeft:
                  Radius.circular(screenSize.width * 0.0486111111111111),
              bottomRight:
                  Radius.circular(screenSize.width * 0.0486111111111111))),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.0486111111111111),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "رمز التحقق",
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
