import 'package:flutter/material.dart';
import 'package:flutter_template/app/data/model/component.dart';
import 'package:flutter_template/app/ui/component/text/highlight_text.dart';

class BasicCardItem extends StatefulWidget {
  const BasicCardItem(
      {super.key,
      required this.component,
      this.highlightKeyword,
      required this.onClickComponent});
  final Component component;
  final String? highlightKeyword;
  final VoidCallback onClickComponent;

  @override
  State<BasicCardItem> createState() => _BasicCardItemState();
}

class _BasicCardItemState extends State<BasicCardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          widget.onClickComponent();
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HighlightText(
                text: widget.component.name,
                keyword: widget.highlightKeyword,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              HighlightText(
                text: widget.component.description,
                keyword: widget.highlightKeyword,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
