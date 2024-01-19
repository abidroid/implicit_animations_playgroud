import 'package:flutter/material.dart';

class AnimatedSearchFieldScreen extends StatefulWidget {
  const AnimatedSearchFieldScreen({super.key});

  @override
  State<AnimatedSearchFieldScreen> createState() => _AnimatedSearchFieldScreenState();
}

class _AnimatedSearchFieldScreenState extends State<AnimatedSearchFieldScreen> {
  bool isExpanded = false;
  bool isIconClicked = false;

  final animationDuration = const Duration(milliseconds: 250);
  final opacityAnimationDuration = const Duration(milliseconds: 150);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: AnimatedContainer(
              height: 48,
              duration: animationDuration,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: isExpanded ? Colors.blue : Colors.transparent,
                    width: isExpanded ? 1 : 0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(24))),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                GestureDetector(
                  onTapDown: (_) {
                    setState(() {
                      isIconClicked = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      isIconClicked = false;
                    });
                  },
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: AnimatedOpacity(
                    opacity: isIconClicked ? 0.7 : 1,
                    duration: opacityAnimationDuration,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  child: AnimatedContainer(
                    duration: animationDuration,
                    width: isExpanded ? 200 : 0,
                    child: TextField(
                      onTapOutside: (_) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      decoration: const InputDecoration(
                        hintText: 'Start typing to search',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
