import 'package:flutter/material.dart';
import 'package:ingredients_collection_mobile/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ingredients Collection',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 228, 203, 232), // Background color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan.shade100),
        useMaterial3: true,
        ),
      home: HomePage(),
    );
  }
}