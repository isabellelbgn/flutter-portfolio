import 'package:flutter/material.dart';
import 'utils/url_launcher_util.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Positioned(
          child: Container(
            height: screenHeight * 0.75,
            decoration: const BoxDecoration(
              color: Color(0xFFEFEEEE),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 80,
          left: 0,
          right: 0,
          child: Center(
            child: CircleAvatar(
              maxRadius: 65,
              backgroundImage: AssetImage('assets/my-icon.JPG'),
            ),
          ),
        ),
        Positioned(
          top: 110,
          left: 220,
          right: 0,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Isabelle Labuguen 👋🏻',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 230,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              'Crafting engaging\nwebsites with\nmodern design.',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          top: 430,
          left: 0,
          right: 0,
          child: Center(
            child: ElevatedButton.icon(
              onPressed: () {
                launchURL('https://github.com/isabellelbgn');
              },
              label: Text(
                'Latest Projects',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white),
              ),
              icon: const Icon(Icons.arrow_outward,
                  size: 18, color: Colors.white),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
                backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
