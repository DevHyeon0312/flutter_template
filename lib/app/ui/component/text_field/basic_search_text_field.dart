import 'dart:async';

import 'package:flutter/material.dart';

class BasicSearchTextField extends StatefulWidget {
  const BasicSearchTextField({super.key, required this.onSearchChanged});

  final Function(String) onSearchChanged;

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
    _debounce = Timer(const Duration(milliseconds: 200), () {
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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Search...',
          suffixIcon: Icon(Icons.search),
          border: InputBorder.none,
        ),
        onChanged: _onSearchChanged,
        onSubmitted: _onSubmitted,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
