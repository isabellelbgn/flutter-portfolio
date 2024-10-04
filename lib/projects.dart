import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'utils/url_launcher_util.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: "Projects",
      children: [
        ProjectCard(
          title: "NeverForEver E-commerce",
          description:
              "A full-stack web application designed for online shopping. The application allows users to register and login, browse products, add items to their cart, and make purchases.",
          githubUrl: "https://github.com/isabellelbgn/neverforever-ecommerce",
          tags: ["React", "Node.js", "Express", "MySQL", "Tailwind"],
        ),
        ProjectCard(
          title: "NeverForEver Admin",
          description:
              "A full-stack web application of the administrative interface for the Neverforever E-commerce platform. It is an application designed for managing products, orders, suppliers, and users within the Neverforever E-commerce system.",
          githubUrl: "https://github.com/isabellelbgn/neverforever-admin",
          tags: ["React", "Node.js", "Express", "MySQL", "Tailwind"],
        ),
        ProjectCard(
          title: "All Bookstore",
          description:
              "A full-stack web application designed to revolutionize how people interact with online bookstores. It seamlessly integrates a user-friendly interface with powerful backend functionality to ensure efficient book tracking and user interaction.",
          githubUrl: "https://github.com/isabellelbgn/all-bookstore",
          tags: ["React", "Python", "Django", "PostgreSQL", "Tailwind", "REST"],
        ),
      ],
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const Section({required this.title, required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 70, 0, 110),
      decoration: const BoxDecoration(
        color: Color(0xFFEFEEEE),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Column(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String githubUrl;
  final List<String> tags;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.githubUrl,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color: Colors.black.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 8),
          Text(description, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                spacing: 8,
                children: tags.map((tag) {
                  return Chip(
                    label: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 1),
                      child: Text(
                        tag,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                    backgroundColor: Colors.grey[900],
                  );
                }).toList(),
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () {
                  launchURL(githubUrl);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
