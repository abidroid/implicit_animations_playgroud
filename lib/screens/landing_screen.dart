import 'package:flutter/material.dart';

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
            Card(
              child: ListTile(
                title: const Text('Mastering Implicit Animations in Flutter'),
                subtitle: const Text('Nemi Shah'),
                trailing: const Chip(label:  Text('Medium')),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
