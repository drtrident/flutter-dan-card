import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Card createCard(IconData icon, String text) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListTile(
          leading: Icon(
            icon,
            size: 40.0,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: const TextStyle(
              color: Colors.teal,
              fontFamily: 'SourceSansPro',
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
            child: Text('My App'),
          ),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80.0,
                foregroundImage: AssetImage('images/dan.jpg'),
              ),
              const Text(
                'Dan Ratiu',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'DEPARTMENT MANAGER',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'SourceSansPro',
                  color: Colors.white60,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.white60,
                ),
              ),
              createCard(Icons.phone, '+49 1234567890'),
              createCard(Icons.email, 'dan.ratiu@some-company.com'),
            ],
          ),
        ),
      ),
    );
  }
}
