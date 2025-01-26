
import 'package:flutter/material.dart';

import '../const.dart';
import '../widgets/custom_butten.dart';
import '../widgets/custom_text.dart';
import 'LogInPages/user_name_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.42857142857144, 890.2857142857143.3)

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenSize.height * 0.1123234916559692),
          Image.asset(kLogo, height: screenSize.height * 0.3369704749679076),
          SizedBox(height: screenSize.height * 0.0561617458279846),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'UK VOIP',
                fontSize: screenSize.width * 0.0972222222222222,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.0972222222222222),
            child: Column(
              children: [
                SizedBox(height: screenSize.height * 0.0224646983311938),
                CustomButten(
                  buttenText: 'تسجيل الدخول',
                  onTap: () {
                    Navigator.pushNamed(context, USerNameLogInPaage.id);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: screenSize.height * 0.1348314607),
        ],
      ),
    );
  }
}













 // ###  custom bottom bar  ###  
  // Container(
  //                   height: screenHeight * 0.0561617458279846,
  //                   decoration: const BoxDecoration(
  //                     color: kColor,
  //                     borderRadius: BorderRadius.only(
  //                       topLeft: Radius.circular(16),
  //                       topRight: Radius.circular(16),
  //                     ),
  //                   ),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       GestureDetector(
  //                         onTap: () {
  //                           Navigator.pushNamed(context, RegisterPage.id);
  //                         },
  //                         child: const Text(
  //                           '     حساب جديد',
  //                           style: TextStyle(color: Colors.white),
  //                         ),
  //                       ),
  //                       const Text(
  //                         ' لا تملك حساب؟ يمكنك تسجيل ',
  //                         style: TextStyle(color: Colors.black),
  //                       ),
  //                     ],
  //                   ),
  //                 ),