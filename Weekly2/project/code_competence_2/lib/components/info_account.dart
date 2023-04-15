import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InfoAccount extends StatefulWidget {
  const InfoAccount({
    super.key,
  });

  @override
  State<InfoAccount> createState() => _InfoAccountState();
}

class _InfoAccountState extends State<InfoAccount> {
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
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(Icons.person),
      ),
      title: Text(
        username,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
