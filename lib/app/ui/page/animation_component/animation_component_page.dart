import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/util/debug_log.dart';

class AnimationComponentPage extends ConsumerStatefulWidget {
  const AnimationComponentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AnimationComponentPageState();
}

class _AnimationComponentPageState extends ConsumerState<AnimationComponentPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    DebugLog.d('AnimationComponentPage initialized');
  }

  @override
  void dispose() {
    DebugLog.d('AnimationComponentPage disposed');
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
          child: Text('AnimationComponentPage'),
        ),
      ),
    );
  }
}
