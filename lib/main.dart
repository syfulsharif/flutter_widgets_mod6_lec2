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
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text('Module 6: Live 2'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
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
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _userNameTextEditingController,
                decoration: const InputDecoration(
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
            ),
            ListTile(
              onTap: () {
                print('ListTile Tapped');
              },
              title: Text('Username'),
              subtitle: Text('Designation'),
              leading: Icon(Icons.account_circle_rounded),
              trailing: Icon(Icons.arrow_forward_outlined),
              tileColor: Colors.grey.shade300.withOpacity(0.5),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print(_emailTextEditingController.text);
                    print(_userNameTextEditingController.text);
                    _emailTextEditingController.clear();
                    _userNameTextEditingController.clear();
                  },
                  child: Text('Show'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(_emailTextEditingController.text);
                    print(_userNameTextEditingController.text);
                    _emailTextEditingController.clear();
                    _userNameTextEditingController.clear();
                  },
                  child: Text('Show'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(_emailTextEditingController.text);
                    print(_userNameTextEditingController.text);
                    _emailTextEditingController.clear();
                    _userNameTextEditingController.clear();
                  },
                  child: Text('Show'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(_emailTextEditingController.text);
                    print(_userNameTextEditingController.text);
                    _emailTextEditingController.clear();
                    _userNameTextEditingController.clear();
                  },
                  child: Text('Show'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(_emailTextEditingController.text);
                    print(_userNameTextEditingController.text);
                    _emailTextEditingController.clear();
                    _userNameTextEditingController.clear();
                  },
                  child: Text('Show'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(_emailTextEditingController.text);
                    print(_userNameTextEditingController.text);
                    _emailTextEditingController.clear();
                    _userNameTextEditingController.clear();
                  },
                  child: Text('Show'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(_emailTextEditingController.text);
                    print(_userNameTextEditingController.text);
                    _emailTextEditingController.clear();
                    _userNameTextEditingController.clear();
                  },
                  child: Text('Show'),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
