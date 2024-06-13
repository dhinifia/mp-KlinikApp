import 'package:flutter/material.dart';
//import 'column_widget.dart';
//import 'row_widget.dart';
//import 'baris_kolom.dart';
//import '/ui/beranda.dart';
import 'ui/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Klinik',
        debugShowCheckedModeBanner: false,
        //home: ColumnWidget(),
        //home: RowWidget(),
        //home: BarisKolom(),
        //home: Beranda(),
        //home: HomePage(),
        home: LoginView());
  }
}
