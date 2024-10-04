import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 150.0, bottom: 35.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'About Me',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                Text(
                  'I am currently in my fourth year pursuing a Bachelor of Science in Computer Science. As a committed member of \nSAMAHAN Systems Development, I work as a Backend Developer, focusing in TypeScript and Nest.js. \nIn addition, I hold the position of Project Manager, where I lead our team toward successful project outcomes.',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Previously, I interned as a Software Engineer at Orange & Bronze Software Labs, where I took on roles as a Business Analyst and Quality Assurance Intern.',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8.0),
                Text(
                  'I am enthusiastic about learning new technologies and am actively seeking a part-time position as a software developer',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Outside of coding, I enjoy reading, watching movies, and hitting the gym. I also have a passion for continuous learning and exploring new interests.',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
