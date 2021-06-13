import 'package:appdevnursie/dashboard/homeremedy/appetite.dart';
import 'package:appdevnursie/dashboard/homeremedy/nausea.dart';
import 'package:appdevnursie/dashboard/homeremedy/runny-nose.dart';
import 'package:appdevnursie/dashboard/homeremedy/smell-remedy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:appdevnursie/screens/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
        //home: AppetiteLoss(),
        title: 'Nursie');
  }
}
