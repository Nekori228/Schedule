import 'package:flutter/material.dart';
import 'package:schedule/widgets/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: MainDrawer(),
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Color(0xFF6F5DD9),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 40,
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.download, size: 40)),
          ],
        ),
      ),
    );
  }
}
