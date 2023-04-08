import 'package:flutter/material.dart';
import 'package:flutter_animasi/pages/home_page.dart';
import 'package:flutter_animasi/stores/create_contact.dart';
import 'package:flutter_animasi/stores/list_contact.dart';
import 'package:google_fonts/google_fonts.dart';

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
      ),
      body: Center(
        child: Text(
          'Welcome to My App',
          style: GoogleFonts.sahitya(fontSize: 30, fontWeight: FontWeight.w100),
        ),
      ),
      drawer: const DrawerApp(),
    );
  }
}

class DrawerApp extends StatelessWidget {
  const DrawerApp({
    super.key,
  });

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
                    'Hai, Nisa Sulistiawati',
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
                      builder: (context) => const PageNew(),
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
