import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_svg/flutter_svg.dart';

class Eksplorasi extends StatefulWidget {
  @override
  _EksplorasiState createState() => _EksplorasiState();
}

class _EksplorasiState extends State<Eksplorasi> {
  final String gambarUrl = "https://avatars.dicebear.com/api/:style/:seed.svg";
  String? _style;
  String? _seed;
  String? _imageUrl;

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

  void generateGambar() async {
    try {
      final imageUrl = await fetchAvatar(style: _style!, seed: _seed!);
      setState(() {
        _imageUrl = imageUrl;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Generate Gambar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_imageUrl != null)
              SvgPicture.string(
                _imageUrl!,
                height: 150,
                width: 100,
              ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Style',
                hintText: 'male/female',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _style = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Seed',
                hintText: '1/2/3....',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _seed = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: generateGambar,
              child: const Text('Generate'),
            ),
          ],
        ),
      ),
    );
  }
}
