import '../view/log_in_page.dart';
import '../widgets/custom_butten.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.4285714285714, 890.2857142857143)
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.height * 0.1123234916559692),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButten(buttenText: 'تعبة الرصيد'),
          SizedBox(height: 20),
          CustomButten(buttenText: 'دعم الفني'),
          SizedBox(height: 20),
          CustomButten(buttenText: 'تغير اللغه'),
          SizedBox(height: 20),
          CustomButten(buttenText: 'تقيم التطبيق'),
          SizedBox(height: 20),
          CustomButten(
            buttenText: 'تسجيل الخروج',
            onTap: () {
              Navigator.pushNamed(context, LoginPage.id);
            },
          )
        ],
      ),
    );
  }
}
