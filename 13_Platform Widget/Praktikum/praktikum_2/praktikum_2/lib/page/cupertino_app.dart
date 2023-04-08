import 'package:flutter/cupertino.dart';
import 'package:praktikum_2/page/cupertino_page.dart';

class App1 extends StatelessWidget {
  final _themeDart = const CupertinoThemeData.raw(
    Brightness.dark,
    null,
    null,
    null,
    null,
    null,
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: _themeDart,
      home: HomePage1(),
    );
  }
}
