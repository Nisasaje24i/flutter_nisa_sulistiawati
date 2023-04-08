import 'package:flutter/material.dart';
import 'package:flutter_animasi/components/profile.dart';
import 'package:flutter_animasi/model/db_manager.dart';
import 'package:flutter_animasi/screens/contact/halaman_list_contact.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'halaman_kosong.dart';
import 'halaman_tambah_contact.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONTACT',
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TambahKontak(),
            ),
          );
        },
      ),
      body: buildTaskScreen(),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<DbManager>(builder: (context, manager, child) {
      return ContactListScreen(
        manager: manager,
      );
    });
  }
}
