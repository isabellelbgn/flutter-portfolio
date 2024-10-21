import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utils/url_launcher_util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color(0xFFEFEEEE),
        toolbarHeight: 115,
        title: Padding(
            padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
            child: Row(children: [
              Row(
                children: [
                  MediaQuery.of(context).size.width <= 700
                      ? Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Clipboard.setData(const ClipboardData(
                                    text: 'labugueni@gmail.com'));
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.black,
                                minimumSize: const Size(100, 50),
                                foregroundColor: Colors.white,
                              ),
                              child: Text(
                                "Email",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                launchUrl(
                                    "https://drive.usercontent.google.com/download?id=1d7gNkuO9fRo2QaFlU4EzG65VKJUBXt1V&export=download&authuser=0&confirm=t&uuid=8d792cd5-f7f7-405e-998e-0a91e22b8084&at=AN_67v10SZy9GiJppUx6XebAD8Fz:1729485406839"
                                        as Uri);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(100, 50),
                              ),
                              child: Text(
                                "CV",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Text(
                              'labugueni@gmail.com',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                Clipboard.setData(const ClipboardData(
                                    text: 'labugueni@gmail.com'));
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(100, 50),
                              ),
                              child: Text(
                                "Copy",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                launchUrl(Uri.parse(
                                    "https://drive.usercontent.google.com/download?id=1d7gNkuO9fRo2QaFlU4EzG65VKJUBXt1V&export=download&authuser=0&confirm=t&uuid=8d792cd5-f7f7-405e-998e-0a91e22b8084&at=AN_67v10SZy9GiJppUx6XebAD8Fz:1729485406839"));
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(100, 50),
                              ),
                              child: Text(
                                "CV",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  MediaQuery.of(context).size.width <= 700
                      ? Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                launchURL(
                                    'https://www.linkedin.com/in/isabellelabuguen/');
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: const FaIcon(FontAwesomeIcons.linkedin,
                                    size: 20),
                              ),
                            ),
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                launchURL('https://github.com/isabellelbgn');
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: const FaIcon(FontAwesomeIcons.github,
                                    size: 20),
                              ),
                            ),
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                launchURL(
                                    'https://www.instagram.com/isabellelbgn/');
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: const FaIcon(FontAwesomeIcons.instagram,
                                    size: 20),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                launchURL(
                                    'https://www.linkedin.com/in/isabellelabuguen/');
                              },
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                              ),
                              child: Text(
                                'LinkedIn',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            const Text('/', style: TextStyle(fontSize: 13)),
                            TextButton(
                              onPressed: () {
                                launchURL('https://github.com/isabellelbgn');
                              },
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                              ),
                              child: Text(
                                'GitHub',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            const Text('/', style: TextStyle(fontSize: 13)),
                            TextButton(
                              onPressed: () {
                                launchURL(
                                    'https://www.instagram.com/isabellelbgn/');
                              },
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                              ),
                              child: Text(
                                'Instagram',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ])));
  }

  @override
  Size get preferredSize => const Size.fromHeight(115);
}
