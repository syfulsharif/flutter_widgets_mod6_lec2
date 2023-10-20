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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            const Text('Module 6: Live 2'),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none))
          ],
        ),
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
                decoration: const InputDecoration(
                  label: Text('Email'),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _userNameTextEditingController,
                decoration: InputDecoration(
                  label: Text('User Name'),
                  hintText: 'Enter your username',
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
