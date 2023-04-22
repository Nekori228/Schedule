import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 400,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Divider(
                color: Colors.white,
                height: 1,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
            ),
            ListTile(
              title: Text("Исходный учебный план",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            ListTile(
              title: Text("Календарно-тематический план",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
