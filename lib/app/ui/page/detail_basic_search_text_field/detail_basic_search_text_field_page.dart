import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/component/text_field/basic_search_text_field.dart';
import 'package:flutter_template/app/ui/page/detail_basic_search_text_field/provider/detail_basic_search_text_field_provider.dart';

class DetailBasicSearchTextFieldPage extends ConsumerStatefulWidget {
  const DetailBasicSearchTextFieldPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DetailBasicSearchTextFieldPageState();
}

class _DetailBasicSearchTextFieldPageState
    extends ConsumerState<DetailBasicSearchTextFieldPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(detailBasicSearchTextFieldProvider);

    return PopScope(
      canPop: AppRoute.detailBasicSearchTextField.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail Basic Search TextField'),
        ),
        body: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: BasicSearchTextField(
                  debounceDuration: state.debounceDuration,
                  horizontalPadding: state.horizontalPadding,
                  borderRadius: state.borderRadius,
                  borderColor: state.borderColor,
                  hintText: state.hintText,
                  onSearchChanged: (text) {
                    ref
                        .read(detailBasicSearchTextFieldProvider.notifier)
                        .updateSearchResult(text);
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 16.0,
                ),
                child: Text('Search Result : ${state.searchResult}'),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Debounce Duration : ${state.debounceDuration}ms'),
              ),
            ),
            SliverToBoxAdapter(
              child: Slider(
                value: state.debounceDuration / 100,
                min: 1,
                max: 20,
                label: '${state.debounceDuration}',
                divisions: 19,
                onChanged: (value) {
                  ref
                      .read(detailBasicSearchTextFieldProvider.notifier)
                      .updateDebounceDuration((value * 100).toInt());
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                    'Horizontal Padding : ${state.horizontalPadding.toInt()}'),
              ),
            ),
            SliverToBoxAdapter(
              child: Slider(
                value: state.horizontalPadding,
                min: 0,
                max: 100,
                label: '${state.horizontalPadding.toInt()}',
                divisions: 100,
                onChanged: (value) {
                  ref
                      .read(detailBasicSearchTextFieldProvider.notifier)
                      .updateHorizontalPadding(value);
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Border Radius : ${state.borderRadius.toInt()}'),
              ),
            ),
            SliverToBoxAdapter(
              child: Slider(
                value: state.borderRadius,
                min: 0,
                max: 30,
                label: '${state.borderRadius.toInt()}',
                divisions: 30,
                onChanged: (value) {
                  ref
                      .read(detailBasicSearchTextFieldProvider.notifier)
                      .updateBorderRadius(value);
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Border Color : ',
                        children: [
                          WidgetSpan(
                            child: ClipOval(
                              child: Container(
                                width: 20,
                                height: 20,
                                color: state.borderColor,
                              ),
                            ),
                          ),
                          const WidgetSpan(
                            child: SizedBox(width: 4),
                          ),
                          TextSpan(text: '${state.borderColor}'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Pick a color!'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: state.borderColor,
                              onColorChanged: (color) {
                                ref
                                    .read(detailBasicSearchTextFieldProvider
                                        .notifier)
                                    .updateBorderColor(color);
                              },
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Got it'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Change Border Color'),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Hint Text : ${state.hintText}'),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  onChanged: (text) {
                    ref
                        .read(detailBasicSearchTextFieldProvider.notifier)
                        .updateHintText(text);
                  },
                  decoration: const InputDecoration(
                    hintText: 'Edit HintText',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
