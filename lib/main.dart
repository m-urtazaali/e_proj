import 'package:e_proj/register.dart';
import 'package:flutter/material.dart';
// import 'package:loginuicolors/login.dart';
// import 'package:loginuicolors/register.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'login.dart';

void main() async {
  await Hive.initFlutter();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}