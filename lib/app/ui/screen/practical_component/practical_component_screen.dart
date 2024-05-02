import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/util/debug_log.dart';

class PracticalComponentScreen extends ConsumerStatefulWidget {
  const PracticalComponentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PracticalComponentScreenState();
}

class _PracticalComponentScreenState
    extends ConsumerState<PracticalComponentScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    DebugLog.i('PracticalComponentScreen initialized');
  }

  @override
  void dispose() {
    DebugLog.i('PracticalComponentScreen disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: AppRoute.main.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: const Scaffold(
        body: Center(
          child: Text('PracticalComponentScreen'),
        ),
      ),
    );
  }
}
