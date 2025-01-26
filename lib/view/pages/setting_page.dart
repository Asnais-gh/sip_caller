

import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/setting.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Expanded(child: Setting()),
      ],
    );
  }
}
