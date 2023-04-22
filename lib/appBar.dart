import 'package:flutter/material.dart';
import 'package:schedule/globals.dart';

class appBarProject extends StatelessWidget with PreferredSizeWidget {
  appBarProject({Key? key}) : super(key: key);

  double heightAppBar = 80;

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(heightAppBar),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: const Color(0xFF6F5DD9),
          ),
          Center(
            child: Text(
              page == 0 ? "Учебный план" : page == 1 ? "Календарно-тематический план" : '',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Icon(
                      Icons.menu,
                      size: 30,
                      color: Color(0xFF23E091),
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: DropdownButtonFormField(
                        hint: const Text('Предмет'),
                        iconSize: 0.0,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 40,
                            color: Color(0xFF23E091),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        value: selectedValue,
                        onChanged: (String? newValue) {},
                        items: const [
                          DropdownMenuItem(value: "1", child: Text("Численные методы")),
                          DropdownMenuItem(value: "2", child: Text("Основы философии")),
                          DropdownMenuItem(value: "3", child: Text("УП.01")),
                          DropdownMenuItem(value: "4", child: Text("УП.04")),
                          DropdownMenuItem(value: "5", child: Text("МДК 07.02")),
                          DropdownMenuItem(value: "6", child: Text("МДК 02.02")),
                          DropdownMenuItem(value: "7", child: Text("МДК 04.03")),
                          DropdownMenuItem(value: "8", child: Text("МДК 03.03")),
                          DropdownMenuItem(value: "9", child: Text("МДК 03.01")),
                          DropdownMenuItem(value: "10", child: Text("МДК 02.01")),
                        ]),
                  )
                ],
              ),
            ),
          ),
          Positioned.fill(
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset('assets/images/download.png'),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.03)
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar);
}
