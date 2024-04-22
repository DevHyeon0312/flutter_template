import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/component/card/basic_card_item.dart';
import 'package:flutter_template/app/ui/component/text_field/basic_search_text_field.dart';
import 'package:flutter_template/app/ui/page/screen_basic_component/provider/basic_component_provider.dart';
import 'package:flutter_template/util/debug_log.dart';

class BasicComponentPage extends ConsumerStatefulWidget {
  const BasicComponentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BasicComponentPageState();
}

class _BasicComponentPageState extends ConsumerState<BasicComponentPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    DebugLog.d('BasicComponentPage initialized');
    ref.read(basicComponentProvider.notifier).getBasicComponents('');
  }

  @override
  void dispose() {
    DebugLog.d('BasicComponentPage disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(basicComponentProvider);
    return PopScope(
      canPop: AppRoute.home.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BasicSearchTextField(
                    onSearchChanged: (text) {
                      ref
                          .read(basicComponentProvider.notifier)
                          .getBasicComponents(text);
                    },
                  ),
                ),
              ),
              state.components.isEmpty
                  ? const SliverFillRemaining(
                      child: Center(
                        child: Text('No data'),
                      ),
                    )
                  : SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => ListTile(
                            title: BasicCardItem(
                          component: state.components[index],
                          highlightKeyword: state.lastSearchText,
                          onClickComponent: () {
                            DebugLog.d('Component clicked');
                          },
                        )),
                        childCount: state.components.length,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
