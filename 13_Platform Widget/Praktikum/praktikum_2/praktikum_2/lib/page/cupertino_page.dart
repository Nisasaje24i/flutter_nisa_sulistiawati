import 'package:flutter/cupertino.dart';
import 'package:praktikum_2/model/nama_kontak.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CuppertinoApp"),
      ),
      child: const Center(
        child: Text("this is Cuppertino App"),
      ),
    );
  }
}
