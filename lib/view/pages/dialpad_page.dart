
import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/dailpad.dart';

class DialPadPage extends StatelessWidget {
  const DialPadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBar(),
        CustomDialPad(),
      ],
    );
  }
}
