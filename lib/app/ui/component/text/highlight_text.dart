import 'package:flutter/material.dart';

class HighlightText extends StatelessWidget {
  final String text;
  final String? keyword;
  final TextStyle? style;

  const HighlightText({
    super.key,
    required this.text,
    this.keyword,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    if (keyword == null ||
        keyword!.isEmpty ||
        !text.toLowerCase().contains(keyword!.toLowerCase())) {
      return Text(text, style: style);
    }

    var lowerText = text.toLowerCase();
    var lowerKeyword = keyword!.toLowerCase();

    List<TextSpan> spans = [];
    int start = 0;
    int found = -1;
    TextStyle? highlightStyle = style?.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
        ) ??
        TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
        );

    while ((found = lowerText.indexOf(lowerKeyword, start)) != -1) {
      if (found - start > 0) {
        spans.add(
          TextSpan(
            text: text.substring(start, found),
            style: style,
          ),
        );
      }
      spans.add(
        TextSpan(
          text: text.substring(found, found + keyword!.length),
          style: highlightStyle,
        ),
      );
      start = found + lowerKeyword.length;
    }
    if (start < lowerText.length) {
      spans.add(
        TextSpan(
          text: text.substring(start),
          style: style,
        ),
      );
    }

    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: spans,
      ),
    );
  }
}
