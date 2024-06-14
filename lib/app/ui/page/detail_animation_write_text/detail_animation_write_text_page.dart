import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/component/animation_write_text/animation_write_text.dart';

class DetailAnimationWriteTextPage extends ConsumerStatefulWidget {
  const DetailAnimationWriteTextPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DetailAnimationWriteTextPageState();
}

class _DetailAnimationWriteTextPageState
    extends ConsumerState<DetailAnimationWriteTextPage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: AppRoute.detailAnimationWriteText.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Animation Write Text'),
          ),
          body: const CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Center(
                  child: AnimationWriteText(
                    text: '안녕하세요, 이러한 위젯은 마치 대화하는 느낌이 나지 않나요?',
                    textStyle: TextStyle(),
                    duration: Duration(milliseconds: 50),
                  ),
                ),
              ),
            ],
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () async {
          //     showDialog(
          //         context: context,
          //         builder: (context) {
          //           return FutureBuilder<String>(
          //             future: FileUtil().readFileContent(
          //               filePath: AppRoute.detailAnimationCrossFade1.filePath,
          //             ),
          //             builder: (context, snapshot) {
          //               if (snapshot.connectionState == ConnectionState.done) {
          //                 return AlertDialog(
          //                   title: const Text(
          //                     'detail_animation_cross_fade_1_page.dart',
          //                     style: TextStyle(
          //                       fontSize: 12.0,
          //                     ),
          //                   ),
          //                   titlePadding: const EdgeInsets.all(8),
          //                   contentPadding: EdgeInsets.zero,
          //                   content: SyntaxView(
          //                       code: snapshot.data ?? '',
          //                       syntax: Syntax.DART,
          //                       // Language
          //                       syntaxTheme: SyntaxTheme.vscodeDark(),
          //                       // Theme
          //                       fontSize: 12.0,
          //                       // Font size
          //                       withZoom: true,
          //                       // Enable/Disable zoom icon controls
          //                       withLinesCount: true,
          //                       // Enable/Disable line number
          //                       expanded: true,
          //                       // Enable/Disable container expansion
          //                       selectable:
          //                           true // Enable/Disable code text selection
          //                       ),
          //                   actions: <Widget>[
          //                     TextButton(
          //                       onPressed: () {
          //                         Clipboard.setData(
          //                           ClipboardData(
          //                             text: snapshot.data ?? '',
          //                           ),
          //                         );
          //                       },
          //                       child: const Text('Copy'),
          //                     ),
          //                     TextButton(
          //                       onPressed: () {
          //                         Get.back();
          //                       },
          //                       child: const Text('Close'),
          //                     ),
          //                   ],
          //                 );
          //               } else {
          //                 return const Center(
          //                   child: CircularProgressIndicator(),
          //                 );
          //               }
          //             },
          //           );
          //         });
          //   },
          //   child: const Icon(Icons.play_arrow),
          // ),
      ),
    );
  }
}
