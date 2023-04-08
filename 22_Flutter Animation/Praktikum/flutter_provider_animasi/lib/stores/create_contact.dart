import 'package:flutter/material.dart';
import 'package:flutter_animasi/model/get_contact.dart';
import 'package:flutter_animasi/stores/list_contact.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:flutter_animasi/model/input_decoration.dart';
import 'package:flutter_animasi/provider/contact.dart' as contact_store;

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String name = '';
  String phone = '';
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  int index = -1;

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CONTACT'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecorationStyle.inputDecorationStyle(
                  'Nama', 'Insert Your Name'),
              controller: nameController,
              onChanged: (String value) {
                name = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecorationStyle.inputDecorationStyle(
                  ' Nomor', 'Insert Your Number'),
              controller: phoneController,
              onChanged: (String value) {
                phone = value;
              },
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!formKey.currentState!.validate()) return;

                    formKey.currentState!.save();

                    contactProvider.add(
                      GetContact(name: name, phoneNumber: phone),
                    );
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 1500),
                            reverseDuration: const Duration(milliseconds: 1500),
                            child: const PageNew()));
                  },
                  child: const Text('Add Contact'),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!formKey.currentState!.validate()) return;

                    formKey.currentState!.save();

                    contactProvider.edit(name, phone, index);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PageNew(),
                      ),
                    );
                  },
                  child: const Text('Edit Contact'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
