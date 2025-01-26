import '../const.dart';
import 'package:flutter/material.dart';

class CustomButten extends StatelessWidget {
  const CustomButten(
      {super.key,
      required this.buttenText,
      this.onTap,
      this.width = double.infinity});
  final String buttenText;
  final VoidCallback? onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: kGradient,
          borderRadius: BorderRadius.circular(16),
        ),
        width: width,
        height: 60,
        child: Center(
            child: Text(buttenText,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
