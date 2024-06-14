const animationCrossFade1Code = '''
import 'package:flutter/material.dart';

/// When clicked, cross-fade animation is applied to firstChild and secondChild.
class AnimationCrossFade1 extends StatefulWidget {
  const AnimationCrossFade1({super.key, required this.duration});
  final Duration duration;

  @override
  State<AnimationCrossFade1> createState() => _AnimationCrossFade1State();
}

class _AnimationCrossFade1State extends State<AnimationCrossFade1> {
  var isCrossFadeState = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCrossFadeState = !isCrossFadeState;
        });
      },
      child: AnimatedCrossFade(
        duration: widget.duration,
        firstChild:
            const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
        secondChild:
            const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
        crossFadeState: isCrossFadeState
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
      ),
    );
  }
}
''';