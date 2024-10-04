import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects.dart';
import 'app_bar.dart';
import 'header.dart';
import 'about_me.dart';
import 'footer.dart';

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
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 1.95,
                child: Stack(
                  children: <Widget>[
                    // Projects overlapping About Me
                    Positioned(
                      top: MediaQuery.of(context).size.height * 1,
                      left: 0,
                      right: 0,
                      child: const Projects(),
                    ),
                    // About Me overlapping Header
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.6,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: const AboutMe(),
                      ),
                    ),
                    // Header
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.75,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEFEEEE),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: const Header(),
                      ),
                    ),
                    // Footer, overlapping projects
                    Positioned(
                      top: MediaQuery.of(context).size.height * 1.85,
                      left: 0,
                      right: 0,
                      child: const Footer(),
                    ),
                    // Projects
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
