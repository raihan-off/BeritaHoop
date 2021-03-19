import 'package:berita_hoop/auth_sevices.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BeritaHoop'),),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          child: Text('Sign In'),
          onPressed: () {}
          // async{
          //   AuthServices.signInAnonymous();
          // },
        ),
      ),
    );
  }
}

