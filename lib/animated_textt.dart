import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextt extends StatefulWidget {
  const AnimatedTextt({super.key});

  @override
  State<AnimatedTextt> createState() => _AnimatedTexttState();
}

class _AnimatedTexttState extends State<AnimatedTextt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 20.0, height: 100.0),
                const Text(
                  'Be',
                  style: TextStyle(fontSize: 43.0,color: Colors.white),
                ),
                const SizedBox(width: 20.0, height: 100.0),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Horizon',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('AWESOME'),
                      RotateAnimatedText('OPTIMISTIC'),
                      RotateAnimatedText('DIFFERENT'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
