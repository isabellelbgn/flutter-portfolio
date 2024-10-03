import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects.dart';
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
                Projects(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
