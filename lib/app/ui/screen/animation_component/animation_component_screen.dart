import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/util/debug_log.dart';

class AnimationComponentScreen extends ConsumerStatefulWidget {
  const AnimationComponentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AnimationComponentScreenState();
}

class _AnimationComponentScreenState
    extends ConsumerState<AnimationComponentScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    DebugLog.d('AnimationComponentScreen initialized');
  }

  @override
  void dispose() {
    DebugLog.d('AnimationComponentScreen disposed');
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
          child: Text('AnimationComponentScreen'),
        ),
      ),
    );
  }
}
