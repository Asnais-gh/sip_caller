import 'package:flutter/material.dart';

const kLogo = 'assets/ukvoip.jpg';
const kColor = Color(0xff14a475);

var kGradient = LinearGradient(
  begin: Alignment.topLeft, // Start the gradient from the top-left
  end: Alignment.bottomRight, // End the gradient at the bottom-right
  colors: [
    Color.fromRGBO(102, 81, 200, 1.0), // hsla(251, 52%, 55%, 1) equivalent
    Color(0xFF800080), // hsla(300, 100%, 25%, 1) equivalent (hex for purple)
  ],
);
