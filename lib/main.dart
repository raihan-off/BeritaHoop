import 'package:berita_hoop/auth_sevices.dart';
import 'package:berita_hoop/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: null,
      //value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BeritaHoop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}

