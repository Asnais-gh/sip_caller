import '../linphone_service/linphone.dart';
import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart';


class TestCall extends StatefulWidget {
  const TestCall({super.key});
     static String id = 'TestCall';

  @override
  State createState() => _TestCallState();
}

class _TestCallState extends State<TestCall> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _domainController = TextEditingController();
  final _calleeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    requestPermissions();
  }

  Future<void> requestPermissions() async {
    await Permission.microphone.request();
    await Permission.phone.request();
    await Permission.audio.request();
  }

  void _login() async {
    Linphone linphone = Linphone();
    await linphone.login(username: '111', password: '111', domain: 'sip.uk-voip.net'
    
    );
  }

  void _makeCall() async {
    Linphone linphone = Linphone();
    await linphone.makeCall(_calleeController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SIP App'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: _domainController,
                  decoration: InputDecoration(labelText: 'Domain'),
                ),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(labelText: 'Username'),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                ElevatedButton(
                  onPressed: _login,
                  child: Text('تسجيل الدخول'),
                ),
                TextField(
                  controller: _calleeController,
                  decoration: InputDecoration(labelText: 'رقم المتصل به'),
                ),
                ElevatedButton(
                  onPressed: _makeCall,
                  child: Text('إجراء مكالمة'),
                ),
              ],
            ),
          ),
        ));
  }
}
