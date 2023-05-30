import 'package:flutter/material.dart';
import 'package:flutter_application_2/salePage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'login.dart';
import 'password.dart';
import 'main2.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light().copyWith(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => SignUpPage(),
      '/login': (context) => login(),
      '/main2': (context) => SalePage(),
      '/password': (context) => password(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // change l'arrière-plan en blanc
      appBar: AppBar(
        title: Text('Sign Up', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'Enter your name',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'Enter your email',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'Enter your password',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/main2');
              },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: Size(
                    double.infinity, 50), // pour rendre le bouton plus large
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'I already have an account',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 10),
            Text("Ou se connecter avec", style: TextStyle(color: Colors.black)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(MdiIcons.google, color: Colors.black),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(MdiIcons.facebook, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
