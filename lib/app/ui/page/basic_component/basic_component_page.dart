import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
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
  }

  @override
  void dispose() {
    DebugLog.d('BasicComponentPage disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: AppRoute.home.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: const Scaffold(
        body: Center(
          child: Text('BasicComponentPage'),
        ),
      ),
    );
  }
}
