import 'package:flutter/material.dart';
import 'package:praktikum_3/model/data.dart';

//task 1
class HomePage extends StatelessWidget {
  final List<DataList> data = [
    DataList(username: "PurplePenguin22", phone: "(555) 123-4567"),
    DataList(username: "GreenGiraffe99", phone: "(555) 234-5678"),
    DataList(username: "SilverSunshine11", phone: "(555) 345-6789"),
    DataList(username: "BlueButterfly44", phone: "(555) 456-7890"),
    DataList(username: "GoldenDragonfly77", phone: "(555) 567-8901"),
    DataList(username: "RedRainbow66", phone: "(555) 678-9012"),
    DataList(username: "OrangeMeadow55", phone: "(555) 789-0123"),
    DataList(username: "YellowNightfall33", phone: "(555) 890-1234"),
    DataList(username: "BlackStarlight88", phone: "(555) 901-2345"),
    DataList(username: "PinkMoonstone77", phone: "(555) 012-3456")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "JSON ListView in Flutter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                data[index].username,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                data[index].phone,
                style: TextStyle(color: Colors.grey),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  data[index].username[0],
                ),
              ),
            );
          }),
    );
  }
}

//task 2
// class GridViewWidget extends StatelessWidget {
//   const GridViewWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "GridView",
//         ),
//       ),
//       body: GridView.count(crossAxisCount: 4, crossAxisSpacing: 20, children: [
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.message, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.access_alarm_sharp, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child:
//               const Icon(Icons.accessibility_new_outlined, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.accessible_forward, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.account_balance_sharp, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.accessibility_sharp, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//             margin: const EdgeInsets.all(10),
//             padding: const EdgeInsets.all(10),
//             child: const Icon(Icons.account_circle, color: Colors.white),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(36),
//               color: Colors.blue,
//             )),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.account_tree_rounded, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_a_photo, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.ad_units, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.adb_sharp, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_box_outlined, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_alert_sharp, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//             margin: const EdgeInsets.all(10),
//             padding: const EdgeInsets.all(10),
//             child: const Icon(Icons.add_business, color: Colors.white),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(36),
//               color: Colors.blue,
//             )),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_call, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_card, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_chart, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_circle, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_comment, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_home, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//             margin: const EdgeInsets.all(10),
//             padding: const EdgeInsets.all(10),
//             child: const Icon(Icons.add_location, color: Colors.white),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(36),
//               color: Colors.blue,
//             )),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_link, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_moderator, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_reaction, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_road, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_shopping_cart, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.add_task, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//             margin: const EdgeInsets.all(10),
//             padding: const EdgeInsets.all(10),
//             child: const Icon(Icons.add_to_drive, color: Colors.white),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(36),
//               color: Colors.blue,
//             )),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.message, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.access_alarm_sharp, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child:
//               const Icon(Icons.accessibility_new_outlined, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.accessible_forward, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.account_balance_sharp, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.accessibility_sharp, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//             margin: const EdgeInsets.all(10),
//             padding: const EdgeInsets.all(10),
//             child: const Icon(Icons.account_circle, color: Colors.white),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(36),
//               color: Colors.blue,
//             )),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           child: const Icon(Icons.account_tree_rounded, color: Colors.white),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(36),
//             color: Colors.blue,
//           ),
//         ),
//       ]),
//     );
//   }
// }
