import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                      _launchURL(
                          'https://www.linkedin.com/in/isabellelabuguen/');
                    },
                    child: Text(
                      'LinkedIn',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const Text('/', style: TextStyle(fontSize: 13)),
                  TextButton(
                    onPressed: () {
                      _launchURL('https://github.com/isabellelbgn');
                    },
                    child: Text(
                      'GitHub',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const Text('/', style: TextStyle(fontSize: 13)),
                  TextButton(
                    onPressed: () {
                      _launchURL('https://www.instagram.com/isabellelbgn/');
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

void _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
