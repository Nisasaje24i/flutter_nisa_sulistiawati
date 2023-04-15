import 'package:code_competence_2/components/sidebar_menu.dart';
import 'package:code_competence_2/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/input_decoration.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              logindata.setBool('login', true);
              logindata.remove('username');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
        title: Text(
          'APP DUNIA NOVEL',
          style: GoogleFonts.alegreyaSans(fontSize: 27),
        ),
        centerTitle: true,
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Text(
                    ' DUNIA NOVEL',
                    style: GoogleFonts.alegreyaSans(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Center(
                    child: Text(
                      ' Adventure in a world full of beautiful nuances for each story. ',
                      style: GoogleFonts.alegreyaSans(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Image.asset(
              'assets/images/katalog.png',
              width: 180,
            ),
            SizedBox(height: 15),
            Text(
              'DUNIA NOVEL is an application about a collection of stories created by the nations children. This application is made so that a work that we create in the element of writing can be remembered and immortalized. Not only contains stories, DUNIA NOVEL also contains a collection of poems or poems that are so beautiful.',
              style: GoogleFonts.alegreyaSans(fontSize: 14),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
