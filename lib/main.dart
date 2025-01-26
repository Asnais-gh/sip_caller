
import 'package:flutter/material.dart';


import 'view/LogInPages/user_name_login.dart';
import 'view/home_page.dart';
import 'view/log_in_page.dart';
import 'view/ongoing_call_page.dart';
import 'widgets/test.dart';

void main() {
  runApp(const CallApp());
}

class CallApp extends StatelessWidget {
  const CallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
        routes: {
        LoginPage.id: (context) => const LoginPage(),
        HomePage.id:(context)=> const HomePage(),
        USerNameLogInPaage.id:(context) => const USerNameLogInPaage(),
        TestCall.id:(context)=> const TestCall(),
        OngoingCallPage.id:(context)=> const OngoingCallPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
