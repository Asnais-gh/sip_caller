// ignore_for_file: avoid_print


import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart';

import '../const.dart';
import 'custom_text.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<Contact> contacts = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getContactPermission();
  }

  void getContactPermission() async {
    await Permission.contacts.request();
    if (await Permission.contacts.isGranted) {
      fetchContacts();
    } else {
      print("Permission Denied");
    }
  }

  void fetchContacts() async {
    contacts = await FlutterContacts.getContacts(
      withProperties: true,
    );

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.4285714285714, 890.2857142857143)

    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  height: screenSize.height * 0.0336970474967908, //30
                  width: screenSize.width * 0.0729166666666667, //30
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenSize.width * 0.0145833333333333), //6
                    gradient: kGradient,
                  ),
                  child: Text(
                    contacts[index].displayName.isNotEmpty
                        ? contacts[index].displayName[0]
                        : '?',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.0559027777777778, //23
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                title: CustomText(
                  text: contacts[index].displayName.isNotEmpty
                      ? contacts[index].displayName
                      : 'No Name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  fontSize: screenSize.width * 0.0413194444444444, //17
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
                subtitle: Text(
                  contacts[index].phones.isNotEmpty
                      ? contacts[index].phones.first.number
                      : '(none)',
                  style: TextStyle(
                    fontSize: screenSize.width * 0.0364583333333333, //15
                    color: const Color(0xffC4c4c4),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: IconButton(
                  iconSize: screenSize.width * 0.0729166666666667,//30
                  onPressed: () {},
                  icon: Icon(Icons.call),
                  color: Colors.green,
                ),
                horizontalTitleGap: screenSize.height * 0.0134788189987163, //12
              );
            },
          );
  }
}
