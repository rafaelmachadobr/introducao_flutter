import 'package:flutter/material.dart';
import 'package:introducao_flutter/home_page.dart';
import 'package:introducao_flutter/home_page_stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.red),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/stateful': (context) => HomePageStateFul(),
      },
    );
  }
}
