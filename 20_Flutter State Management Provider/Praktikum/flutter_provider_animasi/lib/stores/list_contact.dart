import 'package:flutter/material.dart';
import 'package:flutter_animasi/stores/create_contact.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:flutter_animasi/provider/contact.dart' as contact_store;

class PageNew extends StatefulWidget {
  const PageNew({Key? key}) : super(key: key);

  @override
  _PageNewState createState() => _PageNewState();
}

class _PageNewState extends State<PageNew> {
  String name = '';
  String phone = '';
  int index = -1;
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
      ),
      body: ListView.builder(
        itemCount: contactProvider.contact.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(contactProvider.contact[index].name),
                subtitle: Text(contactProvider.contact[index].phoneNumber),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        nameController.text =
                            contactProvider.contact[index].name;
                        phoneController.text =
                            contactProvider.contact[index].phoneNumber;
                        setState(() {
                          index = index;
                        });
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade,
                  duration: const Duration(milliseconds: 1500),
                  reverseDuration: const Duration(milliseconds: 1500),
                  child: const ContactPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Route _route() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return const ContactPage();
    },
    transitionDuration: const Duration(seconds: 2),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final tween = Tween(begin: const Offset(0, 5), end: Offset.zero);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
