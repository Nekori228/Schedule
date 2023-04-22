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
          title: SizedBox(width: 300, child: DropdownButton()),
          toolbarHeight: 120,
          backgroundColor: Color(0xFF6F5DD9),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                  onTap: () {}, child: Icon(Icons.download, size: 40)),
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
                hint: Text('Предмет'),
                iconSize: 0.0,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 40,
                    color: Color(0xFF23E091),
                  ),
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
                onChanged: (String? newValue) {},
                items: dropdownItems),
          ],
        ));
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Численные методы"), value: "1"),
    DropdownMenuItem(child: Text("Основы философии"), value: "2"),
    DropdownMenuItem(child: Text("УП.01"), value: "3"),
    DropdownMenuItem(child: Text("УП.04"), value: "4"),
    DropdownMenuItem(child: Text("МДК 07.02"), value: "5"),
    DropdownMenuItem(child: Text("МДК 02.02"), value: "6"),
    DropdownMenuItem(child: Text("МДК 04.03"), value: "7"),
    DropdownMenuItem(child: Text("МДК 03.03"), value: "8"),
    DropdownMenuItem(child: Text("МДК 03.01"), value: "9"),
    DropdownMenuItem(child: Text("МДК 02.01"), value: "10"),
  ];
  return menuItems;
}
