
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/data/model/quiz.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/screen/quiz/provider/quiz_provider.dart';
import 'package:flutter_template/util/debug_log.dart';

class QuizScreen extends ConsumerStatefulWidget {
  const QuizScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _QuizScreenState();
}

class _QuizScreenState
    extends ConsumerState<QuizScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    DebugLog.d('QuizScreen initialized');
    ref
        .read(quizProvider.notifier)
        .getAnimationQuizList();
  }

  @override
  void dispose() {
    DebugLog.d('QuizScreen disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(quizProvider);
    return PopScope(
      canPop: AppRoute.main.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  state.quizList[index].isExpanded = !state.quizList[index].isExpanded;
                });
              },
              expandedHeaderPadding: EdgeInsets.zero,
              children: state.quizList.map<ExpansionPanel>((Quiz item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text('${item.question}'),
                    );
                  },
                  body: ListTile(
                    title: Text(item.answer.toString()),
                  ),
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
