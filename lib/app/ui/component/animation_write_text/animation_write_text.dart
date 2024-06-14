
import 'dart:async';

import 'package:flutter/material.dart';

class AnimationWriteText extends StatefulWidget {
  const AnimationWriteText({super.key, required this.text, required this.textStyle, required this.duration});
  final String text;
  final TextStyle textStyle;
  final Duration duration;

  @override
  State<AnimationWriteText> createState() => _AnimationWriteTextState();
}

class _AnimationWriteTextState extends State<AnimationWriteText> {
  String _displayText = '';
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  void _startTyping() {
    _timer = Timer.periodic(widget.duration, (timer) {
      if (_currentIndex < widget.text.length) {
        setState(() {
          _displayText += widget.text[_currentIndex];
          _currentIndex++;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayText,
      style: widget.textStyle,
    );
  }
}