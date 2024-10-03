import 'package:flutter/material.dart';
import 'utils/url_launcher_util.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFEFEEEE),
      toolbarHeight: 115,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
        child: Row(
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
                    // CV Button action
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
            const Spacer(),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    launchURL('https://www.linkedin.com/in/isabellelabuguen/');
                  },
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
                  child: Text(
                    'GitHub',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const Text('/', style: TextStyle(fontSize: 13)),
                TextButton(
                  onPressed: () {
                    launchURL('https://www.instagram.com/isabellelbgn/');
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(115);
}
