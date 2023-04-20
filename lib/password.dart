import 'package:flutter/material.dart';

class password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Entrez votre adresse e-mail pour recevoir un lien de réinitialisation de mot de passe.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black), // Change text color here
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle send reset password link logic here
              },
              child: Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
