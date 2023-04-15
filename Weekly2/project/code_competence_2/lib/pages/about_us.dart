import 'package:code_competence_2/model/book_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ABOUT US',
          style: GoogleFonts.alegreyaSans(fontSize: 27),
        ),
      ),
      body: GridView.builder(
        itemCount: bookList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width ~/ 150,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    bookList[index].imagePath,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '${bookList[index].title}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '${bookList[index].author}',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Icon(Icons.remove_red_eye_outlined),
                          Text(
                            '${bookList[index].view}',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Read Now'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
