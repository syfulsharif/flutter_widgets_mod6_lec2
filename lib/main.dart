import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _userNameTextEditingController =
  TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Module 6: Live 2'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _emailTextEditingController,
                decoration: InputDecoration(
                  label: Text('Email'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _userNameTextEditingController,
                decoration: InputDecoration(
                  label: Text('User Name'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(_emailTextEditingController.text);
                print(_userNameTextEditingController.text);
                _emailTextEditingController.clear();
                _userNameTextEditingController.clear();
              },
              child: Text('Show'),
            )
          ],
        ),
      ),
    );
  }
}
