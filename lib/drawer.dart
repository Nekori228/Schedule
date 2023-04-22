import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule/globals.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      width: 300,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: page == 0 ? Colors.transparent.withOpacity(0.2) : Colors.transparent,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50))
              ),
              padding: EdgeInsets.only(left: 20),
              height: 100,
              alignment: Alignment.centerLeft,
              child: const Text("Учебный план", style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Container(
              height: 100,
              padding: EdgeInsets.only(left: 20),
              color: page == 1 ? Colors.transparent.withOpacity(0.2) : Colors.transparent,
              alignment: Alignment.centerLeft,
              child: Text("Календарно-тематический план", style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 100,
              color: page == 2 ? Colors.transparent.withOpacity(0.2) : Colors.transparent,
              alignment: Alignment.centerLeft,
              child: Text("Загруженные файлы", style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
