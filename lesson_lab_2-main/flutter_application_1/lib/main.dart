import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: UsersList(),
    appBar: AppBar(title: Text("HubaBubaSquad")),
  )));
}

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  final List<String> users = [
    "Ганеев В.",
    "Пилипенко Д.",
    "Ланович Т.",
    "Шенкнехт С.",
    "Гильметдинов М.",
    "Гиндулина Р.",
    "Киселёв Г.",
    "Наговицын И.",
    "Исаев Д.",
    "Гладкий М.",
    "Микерин В.",
  ];
  final List<String> authors = [ "Ланович."];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        if (authors.contains(users[index])) {
          return Text(users[index],
              style: TextStyle(color: const Color.fromARGB(255, 216, 57, 110)));
        }
        return Text(users[index]);
      },
    );
  }
}
 