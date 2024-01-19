import 'package:flutter/material.dart';
import 'package:implicit_animations_playgroud/screens/medium_nemi_shah/animated_opacity_screen.dart';
import 'package:implicit_animations_playgroud/screens/medium_nemi_shah/animated_search_field_screen.dart';
import 'package:implicit_animations_playgroud/utility/utility.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics and Sources'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            /*
            https://medium.com/@nkshah2/mastering-implicit-animations-in-flutter-e6985d580c6
             */
            Card(
              child: ListTile(
                title: const Text('Mastering Implicit Animations in Flutter'),
                subtitle: const Text('Nemi Shah - Animated Opacity'),
                trailing: const Chip(label: Text('Medium')),
                onTap: () {
                  navigateTo(context: context, widget: const AnimatedOpacityScreen());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Mastering Implicit Animations in Flutter'),
                subtitle: const Text('Nemi Shah - Animated Container and Opacity - Search Field'),
                trailing: const Chip(label: Text('Medium')),
                onTap: () {
                  navigateTo(context: context, widget: const AnimatedSearchFieldScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
