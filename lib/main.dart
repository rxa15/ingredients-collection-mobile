import 'package:flutter/material.dart';
import 'package:ingredients_collection_mobile/screens/login.dart';
import 'package:ingredients_collection_mobile/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_){
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Ingredients Collection',
        theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 228, 203, 232), // Background color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan.shade100),
        useMaterial3: true,
        ),
        home: LoginPage(),
      )
    );
  }
}