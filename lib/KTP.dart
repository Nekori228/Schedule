import 'package:flutter/material.dart';
import 'package:schedule/appBar.dart';
import 'package:schedule/drawer.dart';

class KtpPage extends StatelessWidget {
  const KtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff5CDAA5),
        onPressed: () {},
        child: Icon(Icons.add, size: 30,),
      ),
      backgroundColor: Colors.white,
      drawer: const MainDrawer(),
      appBar: appBarProject(),
    );
  }
}
