// ignore_for_file: prefer_const_constructors, unused_element, avoid_print

import '../const.dart';
import '../view/ongoing_call_page.dart';
import 'package:flutter/material.dart';

class CustomDialPad extends StatefulWidget {
  const CustomDialPad({super.key});

  @override
  CustomDialPadState createState() => CustomDialPadState();
}

class CustomDialPadState extends State<CustomDialPad> {
  final TextEditingController _controller = TextEditingController();

  // Function to handle number press
  void _onNumberPressed(String number) {
    setState(() {
      _controller.text += number;
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
    });
  }

  // Function to handle backspace
  void _onBackspacePressed() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        _controller.text =
            _controller.text.substring(0, _controller.text.length - 1);
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length),
        );
      }
    });
  }

  // Function to handle call button press
  void _onCallPressed() {
    // Add your call functionality here
    print('Calling: ${_controller.text}');
  }

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.4285714285714, 890.2857142857143)
    var sizeFactor = screenSize.height * 0.09852217;
    print(sizeFactor);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(screenSize.width * 0.0486111111111111), //20
          child: TextFormField(
            controller: _controller,
            readOnly: true, // Make it read-only to prevent keyboard input
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            style: TextStyle(
                fontSize:
                    calculateFontSize(_controller.text.length, sizeFactor),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenSize.height * 0.0168485237483954), //15
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDialButton('1'),
                  _buildDialButton('2'),
                  _buildDialButton('3'),
                ],
              ),
              SizedBox(height: screenSize.height * 0.0112323491655969), //10
              // Second Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDialButton('4'),
                  _buildDialButton('5'),
                  _buildDialButton('6'),
                ],
              ),
              SizedBox(height: screenSize.height * 0.0112323491655969), //10
              // Third Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDialButton('7'),
                  _buildDialButton('8'),
                  _buildDialButton('9'),
                ],
              ),
              SizedBox(height: screenSize.height * 0.0112323491655969), //10
              // Fourth Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDialButton('*'),
                  _buildDialButton('0'),
                  _buildDialButton('#'),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: sizeFactor,
              width: sizeFactor,
            ),
            Container(
              height: sizeFactor,
              width: sizeFactor,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: kGradient,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, OngoingCallPage.id);// Navigate to OngoingCallPage
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding:
                      EdgeInsets.all(screenSize.width * 0.0486111111111111),
                  backgroundColor:
                      Colors.transparent, // Set background color to transparent
                  shadowColor: Colors.transparent, // Remove shadow
                ),
                child: Icon(Icons.call,
                    color: Colors.white,
                    size: screenSize.width * 0.0972222222222222), //40
              ),
            ),
            SizedBox(
              height: sizeFactor,
              width: sizeFactor,
              child: GestureDetector(
                onLongPress: () {
                  // Trigger long press action when the button is initially pressed down
                  setState(() {
                    _controller.clear(); // Clear all text
                  });
                },
                child: IconButton(
                  icon: const Icon(Icons.backspace, color: Colors.red),
                  iconSize: screenSize.width * 0.0972222222222222,
                  onPressed:
                      _onBackspacePressed, // Regular short press behavior
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: screenSize.height * 0.0224646983311938),
      ],
    );
  }

  // Widget to build each dial button
  Widget _buildDialButton(String number) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.4285714285714, 890.2857142857143.3)
    final double sizeFactor =
        screenSize.height * 0.09852217; // Adjust this factor as needed

    return SizedBox(
      height: sizeFactor,
      width: sizeFactor,
      child: ElevatedButton(
        onPressed: () => _onNumberPressed(number),
        onLongPress: number == '0'
            ? () => _onNumberPressed('+') // Handle long press for '0' to '+'
            : null, // No action for other numbers,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(), // Makes the button circular
          backgroundColor: Colors.grey[200], // Button background color
          elevation: 1.0, // Controls the shadow effect
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number,
              style: TextStyle(
                fontSize: sizeFactor / 2, // Adjust font size for '0'
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color
              ),
            ),
            if (number == '0') // Only show the '+' under '0'
              Text(
                '+',
                style: TextStyle(
                  fontSize: sizeFactor / 4, // Smaller font size for '+'
                  color: const Color.fromARGB(166, 0, 0, 0), // Text color
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Helper function to calculate font size based on text length
double calculateFontSize(int length, double sizeFactor) {
  if (length <= 14) {
    return sizeFactor / 2; // Default font size for short text
  } else if (length <= 17) {
    return sizeFactor / 2.3; // Adjust font size for medium-length text
  } else {
    return sizeFactor / 2.6; // Smaller font size for longer text
  }
}
