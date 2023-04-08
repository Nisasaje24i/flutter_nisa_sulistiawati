import 'package:flutter/material.dart';
import 'package:flutter_animasi/screens/galery/home_galery.dart';
import 'package:flutter_animasi/components/profile.dart';
import 'package:flutter_animasi/screens/contact/halaman_kosong.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'contact/contact.dart';

class HalamanGalery extends StatelessWidget {
  const HalamanGalery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MEDLEY APP",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => const ProfileSheet(),
              );
            },
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome back to My App'),
      ),
      drawer: const DrawerApp(),
    );
  }
}

class DrawerApp extends StatefulWidget {
  const DrawerApp({
    super.key,
  });

  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
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
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView(
          children: [
            Container(
              child: ListTile(
                title: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    username,
                    style: GoogleFonts.rowdies(
                        fontSize: 30, fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                title: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    "Gallery",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                title: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
