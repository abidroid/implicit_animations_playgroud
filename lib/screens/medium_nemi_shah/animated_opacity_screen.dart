import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double _opacity = 1;

  @override
  void initState() {
    startAnimating();
    super.initState();
  }

  void startAnimating() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = _opacity == 1 ? 0.0 : 1;
      });

      startAnimating();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: _opacity,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      )),
    );
  }
}
