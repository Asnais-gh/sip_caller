
import 'package:flutter/material.dart';

import '../../const.dart';
import '../../widgets/custom_butten.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';
import '../home_page.dart';

class USerNameLogInPaage extends StatelessWidget {
  const USerNameLogInPaage({super.key});
  static String id = 'USerNameLogInPaage';

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.42857142857144, 890.2857142857143.3)

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  CustemFormTextField(
                    hinttext: 'اسم المستخدم',
                  ),
                  SizedBox(height: screenSize.height * 0.0112323491655969),
                  CustemFormTextField(
                    hinttext: 'كلمة المرور',
                    obscureText: true,
                  ),
                  SizedBox(height: screenSize.height * 0.0224646983311938),
                  
                  CustomButten(
                    buttenText: 'تسجيل الدخول',
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.1348314607),
          ],
        ),
      ),
    );
  }
}





//  CustemFormTextField(
//                           hinttext: 'رقم هاتف',
//                           textInputType: TextInputType.number,
//                           textInputFormatter: <TextInputFormatter>[
//                             FilteringTextInputFormatter.digitsOnly,
//                           ],
//                         ),
//                         SizedBox(height: screenHeight * 0.0112323491655969),
//                         CustemFormTextField(
//                           hinttext: 'كلمة المرور',
//                           obscureText: true,
//                         ),