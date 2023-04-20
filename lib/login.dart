import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1E1E1E),
        scaffoldBackgroundColor: Color(0xFF1E1E1E),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Mot de passe oublié?'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
              ),
              SizedBox(height: 20),
              Text("Ou se connecter avec"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(MdiIcons.google,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(MdiIcons.facebook,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
