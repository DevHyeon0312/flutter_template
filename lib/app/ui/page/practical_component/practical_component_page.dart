import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/util/debug_log.dart';

class PracticalComponentPage extends ConsumerStatefulWidget {
  const PracticalComponentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PracticalComponentPageState();
}

class _PracticalComponentPageState extends ConsumerState<PracticalComponentPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    DebugLog.i('PracticalComponentPage initialized');
  }

  @override
  void dispose() {
    DebugLog.i('PracticalComponentPage disposed');
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
          child: Text('PracticalComponentPage'),
        ),
      ),
    );
  }
}
