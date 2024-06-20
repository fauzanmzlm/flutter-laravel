import 'package:flutter/material.dart';
import 'package:flutter_api/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 13, 28, 146)),
        useMaterial3: true,
      ),
      home: const Home(title: 'Flutter CRUD'),
    );
  }
}
