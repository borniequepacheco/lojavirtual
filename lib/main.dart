import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  runApp(MyApp());

  await Firebase.initializeApp();

  FirebaseFirestore.instance
      .collection('pedidos')
      .add({'preco': 19.90, 'usuario': 'Bornieque'});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(
        color: Colors.amber,
      ),
    );
  }
}
