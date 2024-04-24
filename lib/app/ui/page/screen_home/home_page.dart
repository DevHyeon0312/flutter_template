import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/page/screen_home/provider/home_page_provider.dart';
import 'package:flutter_template/util/debug_log.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    DebugLog.d('HomePage initialized');
  }

  @override
  void dispose() {
    DebugLog.d('HomePage disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(homePageProvider);
    return PopScope(
      canPop: AppRoute.home.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child:
                    state.isLogin ? Text('Logged in') : Text('Not logged in'),
              ),
              SliverToBoxAdapter(
                  child: state.user != null
                      ? Text('User: ${state.user!.displayName}')
                      : Text('User: null')),
              SliverToBoxAdapter(
                  child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      ref.read(homePageProvider.notifier).signInWithGoogle();
                    },
                    child: const Text('Sign in with Google'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(homePageProvider.notifier).signOut();
                    },
                    child: const Text('Sign out'),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
