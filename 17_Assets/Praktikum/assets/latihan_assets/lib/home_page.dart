import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageList = [
    'assets/images/with_u.jpg',
    'assets/images/with_him.jpg',
    'assets/images/with_he.jpg',
    'assets/images/with_u1.jpg',
    'assets/images/with_u2.jpg',
    'assets/images/with_u3.jpg',
    'assets/images/unwith_u1.jpg',
    'assets/images/unwith_u2.jpg',
    'assets/images/unwith_u3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Assets'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
              itemCount: imageList.length,
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
                              imagePath: imageList[index],
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
                        imageList[index],
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
                              Navigator.pushNamed(context, '/new-page',
                                  arguments: imagePath);
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
