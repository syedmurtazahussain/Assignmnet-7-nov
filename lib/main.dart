import 'package:assignmnet/todo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TODO",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.blue,
      ),
      home: Murtaza(),
    );
  }
}
