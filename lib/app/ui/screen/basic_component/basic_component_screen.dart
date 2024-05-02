import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/component/card/basic_card_item.dart';
import 'package:flutter_template/app/ui/component/text_field/basic_search_text_field.dart';
import 'package:flutter_template/app/ui/screen/basic_component/provider/basic_component_provider.dart';
import 'package:flutter_template/util/debug_log.dart';
import 'package:get/get.dart';

class BasicComponentScreen extends ConsumerStatefulWidget {
  const BasicComponentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BasicComponentScreenState();
}

class _BasicComponentScreenState extends ConsumerState<BasicComponentScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    DebugLog.d('BasicComponentScreen initialized');
    ref.read(basicComponentProvider.notifier).getBasicComponents('');
  }

  @override
  void dispose() {
    DebugLog.d('BasicComponentScreen disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(basicComponentProvider);
    return PopScope(
      canPop: AppRoute.main.canPop,
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
                        (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 4.0),
                          child: BasicCardItem(
                            component: state.components[index],
                            highlightKeyword: state.lastSearchText,
                            onClickComponent: () {
                              Get.toNamed(
                                AppRoute.detailBasicSearchTextField.name,
                              );
                            },
                          ),
                        ),
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
