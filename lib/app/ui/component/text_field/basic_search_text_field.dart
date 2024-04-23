import 'dart:async';

import 'package:flutter/material.dart';

class BasicSearchTextField extends StatefulWidget {
  const BasicSearchTextField({
    super.key,
    required this.onSearchChanged,
    this.debounceDuration = 200,
    this.horizontalPadding = 20,
    this.borderRadius = 30,
    this.borderColor = Colors.grey,
    this.hintText = 'Search...',
    this.suffixIcon = Icons.search,
  });

  final Function(String) onSearchChanged;
  final int debounceDuration;
  final double horizontalPadding;
  final double borderRadius;
  final Color borderColor;
  final String hintText;
  final IconData? suffixIcon;

  @override
  State<BasicSearchTextField> createState() => _BasicSearchTextFieldState();
}

class _BasicSearchTextFieldState extends State<BasicSearchTextField> {
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(Duration(milliseconds: widget.debounceDuration), () {
      widget.onSearchChanged(value);
    });
  }

  void _onSubmitted(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    widget.onSearchChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(
          color: widget.borderColor,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: Icon(widget.suffixIcon),
          border: InputBorder.none,
        ),
        onChanged: _onSearchChanged,
        onSubmitted: _onSubmitted,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
