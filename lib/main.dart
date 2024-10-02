import 'package:flutter/material.dart';

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
        textTheme: const TextTheme().copyWith(
          bodyMedium: const TextStyle(fontSize: 14, color: Colors.black),
          bodySmall: const TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFEFEEEE),
          title: Row(
            children: [
              Row(
                children: [
                  Text(
                    'labugueni@gmail.com',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      // Copy Button action
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                    ),
                    child: Text(
                      "Copy",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      // CV Button action
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                    ),
                    child: Text(
                      "CV",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      // LinkedIn action
                    },
                    child: Text(
                      'LinkedIn',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const Text('/', style: TextStyle(fontSize: 13)),
                  TextButton(
                    onPressed: () {
                      // GitHub action
                    },
                    child: Text(
                      'GitHub',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const Text('/', style: TextStyle(fontSize: 13)),
                  TextButton(
                    onPressed: () {
                      // Instagram action
                    },
                    child: Text(
                      'Instagram',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
