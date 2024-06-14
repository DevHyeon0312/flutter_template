import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/component/animation_cross_fade_1/animation_cross_fade_1.dart';
import 'package:flutter_template/app/ui/component/animation_cross_fade_1/animation_cross_fade_1_code.dart';
import 'package:get/get.dart';

class DetailAnimationCrossFade1Page extends ConsumerStatefulWidget {
  const DetailAnimationCrossFade1Page({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DetailAnimationCrossFade1PageState();
}

class _DetailAnimationCrossFade1PageState
    extends ConsumerState<DetailAnimationCrossFade1Page> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: AppRoute.detailBasicSearchTextField.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Animation Cross Fade 1'),
          ),
          body: const CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Center(
                  child: AnimationCrossFade1(
                    duration: Duration(milliseconds: 300),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        'detail_animation_cross_fade_1_page.dart',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      titlePadding: const EdgeInsets.all(8),
                      contentPadding: EdgeInsets.zero,
                      content: SyntaxView(
                          code: animationCrossFade1Code,
                          syntax: Syntax.DART, // Language
                          syntaxTheme: SyntaxTheme.vscodeDark(), // Theme
                          fontSize: 12.0, // Font size
                          withZoom:
                          true, // Enable/Disable zoom icon controls
                          withLinesCount:
                          true, // Enable/Disable line number
                          expanded:
                          true, // Enable/Disable container expansion
                          selectable:
                          true // Enable/Disable code text selection
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Clipboard.setData(
                              const ClipboardData(
                                text: animationCrossFade1Code,
                              ),
                            );
                          },
                          child: const Text('Copy'),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  });
            },
            child: const Icon(Icons.play_arrow),
          )),
    );
  }
}
