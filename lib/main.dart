//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lojavirtual/screens/base/base_screen.dart';

void main() {
  runApp(MyApp());

  //main firebase
  /* void main() async {
  runApp(MyApp());
  await Firebase.initializeApp(); */

  //Gravação banco
  /* FirebaseFirestore.instance
      .collection('pedidos')
      .doc('teste')
      .update({'usuario': 'Bornieque B M Pacheco'}); */

  //consulta banco e print
  //DocumentSnapshot document =
  //    await FirebaseFirestore.instance.collection('pedidos').doc('teste').get();

  //print(document.data());

  //imprimir document após update
  /* FirebaseFirestore.instance
      .collection('pedidos')
      .doc('teste')
      .snapshots()
      .listen((document) {
    print(document.data());
  }); */

  //Buscar itens de coleção
/*   QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection('pedidos').get();
  for (DocumentSnapshot document in snapshot.docs) {
    print(document.data());
  } */

  //Ler documentos após inserir ou atualizar algum
  /*  FirebaseFirestore.instance
      .collection('pedidos')
      .snapshots()
      .listen((snapshot) {
    for (DocumentSnapshot document in snapshot.docs) {
      print(document.data());
    }
  }); */
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja Virtual',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
    );
  }
}
