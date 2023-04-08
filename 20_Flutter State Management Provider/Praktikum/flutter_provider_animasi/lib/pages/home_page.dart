import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animasi/model/image_list.dart' as img;
import 'package:flutter_animasi/pages/new_page.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final imageProvider = Provider.of<img.ImageList>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Assets'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
              itemCount: imageProvider.imageList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisExtent: 150,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                          ),
                        ),
                        context: context,
                        builder: (_) => OpenImage(
                              imagePath: imageProvider.imageList[index],
                            ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        imageProvider.imageList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}

class OpenImage extends StatelessWidget {
  final String imagePath;

  OpenImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 50, 40, 45),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          'Konfirmasi',
                          style: GoogleFonts.rowdies(),
                        ),
                        content: Text(
                            'Apakah anda ingin melihat gambar lebih jelas ? Kemungkinan resolusi gambar akan pecah !',
                            style: GoogleFonts.rowdies()),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(_route(imagePath));
                            },
                            child: Text('Ya', style: GoogleFonts.rowdies()),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Tidak', style: GoogleFonts.rowdies()),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Route _route(imagePath) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return NewPage(imagePath: imagePath);
    },
    transitionDuration: Duration(seconds: 2),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final tween = Tween(begin: const Offset(0, 5), end: Offset.zero);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
