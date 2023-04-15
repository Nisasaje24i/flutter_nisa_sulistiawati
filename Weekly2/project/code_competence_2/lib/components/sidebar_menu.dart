import 'package:flutter/material.dart';

import 'menu.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 270,
        height: double.infinity,
        color: const Color(0xff17203a),
        child: SafeArea(
          child: Menu(),
        ),
      ),
    );
  }
}
