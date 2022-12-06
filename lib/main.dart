import 'package:flutter/material.dart';
import 'package:sample/myplaces.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      theme: ThemeData(primarySwatch: Colors.red),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Login to Trip Guide",
            style: TextStyle(fontSize: 50, color: Colors.red),
          ),
          Container(
            child: Column(
              children: [
                TextField(

                  decoration: InputDecoration(labelText: 'Username'),
                ),

                TextField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          }, child: Text("Login"))
        ],
      ),
    ));
  }
}
