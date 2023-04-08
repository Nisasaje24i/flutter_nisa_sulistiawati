import 'package:flutter/material.dart';
import 'package:form_input/model/list_contact.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeList(),
    );
  }
}

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              'List Contacts',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            bodyList(),
          ],
        ),
      ),
    );
  }

  Expanded bodyList() {
    return Expanded(
      child: ListView.builder(
        itemCount: list_contact.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(list_contact[index].nama),
            subtitle: Text(list_contact[index].noHp),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(list_contact[index].nama[0]),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Delete Person'),
                        content: Text('Are you sure you want to delete?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Yes'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('No'),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
