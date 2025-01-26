import '../const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustemFormTextField extends StatelessWidget {
  const CustemFormTextField({
    super.key,
    this.hinttext,
    this.onChanged,
    this.obscureText = false,
    this.textInputType,
    this.textInputFormatter,
  });

  final String? hinttext;
  final Function(String)? onChanged;
  final bool obscureText;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormatter;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), gradient: kGradient),
      padding: const EdgeInsets.all(2), // Padding to show the gradient border
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), // Inner border radius
          color: Colors.white, // Background color for the text field
        ),
        child: TextFormField(
          obscureText: obscureText,
          validator: (data) {
            if (data!.isEmpty) {
              return 'Field is required';
            }
            return null;
          },
          onChanged: onChanged,
          cursorColor: Color(0xFF800080),
          keyboardType: textInputType,
          inputFormatters: textInputFormatter,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: [
                    Color(0xFF6651C8),
                    Color(0xFF800080)
                  ], // Gradient colors
                ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
            ),
            border: InputBorder.none, // Remove default border
            enabledBorder: InputBorder.none, // Remove default border
            focusedBorder: InputBorder.none, // Remove default border
          ),
        ),
      ),
    );
  }
}
