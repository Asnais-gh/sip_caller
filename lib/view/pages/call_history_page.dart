
import 'package:flutter/material.dart';

import '../../widgets/call_history.dart';
import '../../widgets/custom_app_bar.dart';

class CallHistoryPage extends StatelessWidget {
  const CallHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBar(),
        Expanded(child: CallHistory()),
      ],
    );
  }
}
