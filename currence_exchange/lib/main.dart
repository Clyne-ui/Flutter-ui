import 'package:currence_exchange/carrenci_convator_page_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//material desidn

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CarrenciConvatorPageApp());
  }
}
