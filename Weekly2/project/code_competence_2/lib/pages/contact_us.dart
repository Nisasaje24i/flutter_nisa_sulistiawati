import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/input_decoration.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _commentController = TextEditingController();
  List<String> imageList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONTACT US',
          style: GoogleFonts.alegreyaSans(fontSize: 27),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Text(
                      ' Welcome Back, ',
                      style: GoogleFonts.alegreyaSans(fontSize: 25),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Text(
                      ' Please convey your needs ! ',
                      style: GoogleFonts.alegreyaSans(),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Image.asset('assets/images/call.png'),
              SizedBox(height: 15),
              Text('CONTACT US', style: GoogleFonts.alegreyaSans(fontSize: 30)),
              SizedBox(height: 15),
              Text(
                'Need to get touch we us ? Either fill out the from with your inquiry or find the departement email you d like to contact bellow.',
                style: GoogleFonts.alegreyaSans(),
              ),
              SizedBox(height: 15),
              bodyForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget bodyForm(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _firstNameController,
                decoration: InputDecorationStyle.inputDecorationStyle(
                    'First Name', 'Insert Your First Name'),
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: TextField(
                controller: _lastNameController,
                decoration: InputDecorationStyle.inputDecorationStyle(
                    'Last Name', 'Insert Your Last Name'),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecorationStyle.inputDecorationStyle(
                  'Email', 'Insert Your Email'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _commentController,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecorationStyle.inputDecorationStyle(
                  'What Can We Help You With ?', ''),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Data berhasil dikirim !',
                            style: GoogleFonts.alegreyaSans(fontSize: 23)),
                        content: Text(
                          'Name : ${_firstNameController.text}  ${_lastNameController.text} \nEmail : ${_emailController.text} \nComplaints or Questions : ${_commentController.text} ',
                          style: GoogleFonts.alegreyaSans(fontSize: 18),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    });
              },
              child: const Text('SUBMIT'),
            ),
          ],
        ),
      ],
    );
  }
}
