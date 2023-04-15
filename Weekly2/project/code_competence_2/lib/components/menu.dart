import 'package:code_competence_2/components/info_account.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/about_us.dart';
import '../pages/contact_us.dart';
import '../pages/login.dart';

class Menu extends StatefulWidget {
  const Menu({
    super.key,
  });

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late SharedPreferences logindata;
  String username = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InfoAccount(),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Divider(
                color: Colors.white,
                height: 10,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 1500),
                        reverseDuration: const Duration(milliseconds: 1500),
                        child: const AboutUs()));
              },
              leading: SizedBox(
                height: 34,
                width: 34,
                child: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'About Us',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Divider(
                color: Colors.white,
                height: 10,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 1500),
                        reverseDuration: const Duration(milliseconds: 1500),
                        child: const ContactUs()));
              },
              leading: SizedBox(
                height: 34,
                width: 34,
                child: Icon(
                  Icons.message_outlined,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Contact Us',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Divider(
                color: Colors.white,
                height: 10,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 1500),
                        reverseDuration: const Duration(milliseconds: 1500),
                        child: LoginPage()));
              },
              leading: SizedBox(
                height: 34,
                width: 34,
                child: Icon(
                  Icons.person_4,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Divider(
                color: Colors.white,
                height: 10,
              ),
            ),
          ],
        )
      ],
    );
  }
}
