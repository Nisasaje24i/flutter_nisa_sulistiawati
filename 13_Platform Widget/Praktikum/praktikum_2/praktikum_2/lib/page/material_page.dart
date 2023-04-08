import 'package:flutter/material.dart';
import 'package:praktikum_2/config/theme.dart';
import 'package:praktikum_2/model/nama_kontak.dart';
import 'package:praktikum_2/model/nama_pembelajaran.dart';

//soal prioritas 1 no 1

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           "Material App",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: Center(
//         child: Text(
//           "this is material app",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       drawer: Drawer(
//         backgroundColor: Color.fromARGB(255, 38, 37, 37),
//         child: ListView(
//           children: const [
//             ListTile(
//               title: Text("Home"),
//               textColor: Colors.white,
//             ),
//             ListTile(
//               title: Text("Settings"),
//               textColor: Colors.white,
//             ),
//           ],
//         ),
//       ),

//soal prioritas 1 no 2
// class HomePage extends StatelessWidget {
//   final List<NamaKontak> nama_kontak = [
//     NamaKontak(nama: 'Leane Graham', noHp: '089'),
//     NamaKontak(nama: 'Ervin Howel', noHp: '082'),
//     NamaKontak(nama: 'Clementine Bauch', noHp: '089'),
//     NamaKontak(nama: 'Patricia Lebsack', noHp: '082'),
//     NamaKontak(nama: 'Chelsey', noHp: '089'),
//     NamaKontak(nama: 'Mrs.Dennis', noHp: '082'),
//     NamaKontak(nama: 'Kurtist', noHp: '082'),
//     NamaKontak(nama: 'Leane Graham', noHp: '089'),
//     NamaKontak(nama: 'Ervin Howel', noHp: '082'),
//     NamaKontak(nama: 'Clementine Bauch', noHp: '089'),
//     NamaKontak(nama: 'Patricia Lebsack', noHp: '082'),
//     NamaKontak(nama: 'Chelsey', noHp: '089'),
//     NamaKontak(nama: 'Mrs.Dennis', noHp: '082'),
//     NamaKontak(nama: 'Kurtist', noHp: '082'),
//   ];
//       body: ListView.builder(
//           itemCount: nama_kontak.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text(nama_kontak[index].nama),
//               subtitle: Text(nama_kontak[index].noHp),
//               textColor: Colors.black,
//               leading: CircleAvatar(
//                 backgroundColor: Colors.green,
//                 child: Text(
//                   nama_kontak[index].nama[0],
//                 ),
//               ),
//             );
//           }),
//       bottomNavigationBar: BottomNavigationBar(
//           unselectedItemColor: Color.fromRGBO(158, 158, 158, 1),
//           selectedItemColor: Colors.white,
//           backgroundColor: Colors.black,
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.settings,
//               ),
//               label: "Settings",
//             ),
//           ]),

//soal eksplorasi
class HomePage extends StatelessWidget {
  final List<NamaPembelajaran> nama_pembelajaran = [
    NamaPembelajaran(nama_pembelajaran: 'Learn Flutter'),
    NamaPembelajaran(nama_pembelajaran: 'Learn ReactJS'),
    NamaPembelajaran(nama_pembelajaran: 'Learn VueJS'),
    NamaPembelajaran(nama_pembelajaran: 'Learn Tailwin CSS'),
    NamaPembelajaran(nama_pembelajaran: 'Learn UI/UX'),
    NamaPembelajaran(nama_pembelajaran: 'Learn Figma'),
    NamaPembelajaran(nama_pembelajaran: 'Learn Digital Marketing'),
  ];
  @override
  Widget build(BuildContext context) {
    var _incrementCounter;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 252, 252),
      appBar: AppBar(
        title: const Text(
          "My Flutter App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: warnaPrimary,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: ListView.builder(
          itemCount: nama_pembelajaran.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(nama_pembelajaran[index].nama_pembelajaran),
            );
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: const Icon(Icons.add),
          backgroundColor: warnaSecondary),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: warnaSecondary_1,
          selectedItemColor: Colors.white,
          backgroundColor: warnaPrimary,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              label: "Information",
            )
          ]),
    );
  }
}
