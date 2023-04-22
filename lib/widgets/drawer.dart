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
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/back.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            DropdownButton(),
            ListTile(
              title: Text("Исходный учебный план"),
            ),
            ListTile(
              title: Text("ктп", style: TextStyle(color: Colors.white)) ,
            ),
          ],
        ),
      ),
    );
  }
}



class DropdownButton extends StatelessWidget {
  DropdownButton({Key? key}) : super(key: key);
  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
        key: _dropdownFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField(
              hint: Text('1 занятие'),
                iconSize: 0.0,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.arrow_drop_down_sharp, size: 40, color: Color(0xFF23E091),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),

                validator: (value) => value == null ? "Select a country" : null,
                dropdownColor: Colors.white,
                value: selectedValue,
                onChanged: (String? newValue) {

                },
                items: dropdownItems),
          ],
        ));
  }
}

List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("1 занятие"),value: "1"),
    DropdownMenuItem(child: Text("2 занятие"),value: "2"),
  ];
  return menuItems;
}