import 'package:flutter/material.dart';
import 'package:ifp_webapp/pages/containers/story_container.dart';
import 'package:ifp_webapp/widgets/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavBar(),
                StoryContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
