
import 'package:flutter/material.dart';

import '../../widgets/contacts.dart';
import '../../widgets/custom_app_bar.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBar(),
        Expanded(child: Contacts()),
      ],
    );
  }
}
