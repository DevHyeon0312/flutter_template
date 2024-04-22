import 'package:flutter/material.dart';
import 'package:flutter_template/util/debug_log.dart';

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
      DebugLog.i('keyword is null or empty or not found : $keyword');
      return Text(text, style: style);
    }
    //TODO text field -> textfield 로 검색해도 강조되고, text field 로 검색해도 강조되도록 수정 필요
    final startIndex = text.toLowerCase().indexOf(keyword!.toLowerCase());
    final endIndex = startIndex + keyword!.length;
    final beforeKeyword = text.substring(0, startIndex);
    final keywordText = text.substring(startIndex, endIndex);
    final afterKeyword = text.substring(endIndex);
    return RichText(
      text: TextSpan(
        style: style,
        children: <TextSpan>[
          TextSpan(text: beforeKeyword),
          TextSpan(
            text: keywordText,
            style: style?.copyWith(color: Colors.cyan) ??
                const TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextSpan(text: afterKeyword),
        ],
      ),
    );
  }
}
