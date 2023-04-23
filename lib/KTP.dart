import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:schedule/appBar.dart';
import 'package:schedule/drawer.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:schedule/globals.dart';

class KtpPage extends StatefulWidget {
  const KtpPage({Key? key}) : super(key: key);

  @override
  State<KtpPage> createState() => _KtpPageState();
}

class _KtpPageState extends State<KtpPage> {
  List<DataRow> listTable = [];

  Future getTopics() async {
    listTable = [];
    var results = await con.query('select * from topic');
    for (var i = 0; i < jsonDecode(selectedSubject)['topic_id'].toString().split(', ').length; i++) {
      for (var row in results) {
        if (row[0].toString() == jsonDecode(selectedSubject)['topic_id'].toString().split(', ')[i]) {
          listTable.add(DataRow(cells: [
            DataCell(Text(row[1])),
            DataCell(Text(row[2].toInt().toString())),
          ]));
          print('object');
        }
      }
    }
  }

  setStateKtp() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    callbackSetStateKtp = setStateKtp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff5CDAA5),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: const Color(0xffF5F5FF),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          const Text('Кол-во часов'),
                          SizedBox(
                            width: 30,
                          ),
                          Spacer(),
                          Container(
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              ),
                            ),
                            width: 400,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Text('Тема'),
                          Spacer(),
                          Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              ),
                            ),
                            width: 400,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff5CDAA5))),
                          onPressed: () {},
                          child: Container(
                            child: Text('Добавить'),
                            padding: EdgeInsets.all(20),
                          ))
                    ],
                  ),
                );
              });
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      backgroundColor: Colors.white,
      body: selectedSubject != null
          ? FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                    child: DataTable2(
                        columnSpacing: 2,
                        horizontalMargin: 1,
                        columns: const [
                          DataColumn2(
                            label: Center(child: Text('Тема')),
                            size: ColumnSize.L,
                          ),
                          DataColumn(
                            label: Center(child: Text('Кол-во часов')),
                          ),
                        ],
                        rows: listTable),
                  );
                }
                return const CircularProgressIndicator();
              },
              future: getTopics(),
            )
          : Container(),
      drawer: const MainDrawer(),
      appBar: appBarProject(),
    );
  }
}
