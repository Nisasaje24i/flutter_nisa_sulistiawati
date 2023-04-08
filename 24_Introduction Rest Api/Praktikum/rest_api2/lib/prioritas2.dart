import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class Home extends StatelessWidget {
  final String gambarUrl = "https://avatars.dicebear.com/api/:style/:seed.svg";

  Future<String> fetchAvatar(
      {required String style, required String seed}) async {
    var url = gambarUrl.replaceAll(':style', style).replaceAll(':seed', seed);
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Gagal memuat gambar');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Gambar'),
      ),
      body: Container(
        child: FutureBuilder<String>(
          future: fetchAvatar(style: "female", seed: "5"),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              final svgString = snapshot.data as String;
              return Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    SvgPicture.string(
                      svgString,
                      height: 100,
                      width: 150,
                    ),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Error: ${snapshot.error}"),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
