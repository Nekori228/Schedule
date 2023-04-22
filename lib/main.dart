import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'package:schedule/KTP.dart';
import 'package:schedule/drawer.dart';
import 'package:schedule/globals.dart';

import 'appBar.dart';

void main() async {
  var settings = ConnectionSettings(
      host: 'server16.hosting.reg.ru', port: 3306, user: 'u2030942_default', password: 'htc4CghG7GFz548H', db: 'u2030942_xacaton2023');
  con = await MySqlConnection.connect(settings);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(home: KtpPage()));
}


