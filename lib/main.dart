import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'header.dart';
import 'about_me.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        textTheme: const TextTheme().copyWith(
          bodyMedium: const TextStyle(
              fontSize: 13, color: Color.fromRGBO(36, 36, 36, 1)),
          bodySmall: const TextStyle(
              fontSize: 12, color: Color.fromRGBO(36, 36, 36, 1)),
          headlineLarge: const TextStyle(
              fontSize: 48,
              color: Color.fromRGBO(36, 36, 36, 1),
              fontWeight: FontWeight.w600),
        ),
      ),
      home: Scaffold(
        appBar: const CustomAppBar(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: const SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Header(),
                AboutMe(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
