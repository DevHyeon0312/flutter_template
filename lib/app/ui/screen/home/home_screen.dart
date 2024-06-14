import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/component/button/google_login_button.dart';
import 'package:flutter_template/app/ui/screen/home/provider/home_screen_provider.dart';
import 'package:flutter_template/util/debug_log.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    DebugLog.d('HomeScreen initialized');
  }

  @override
  void dispose() {
    DebugLog.d('HomeScreen disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(homeScreenProvider);
    return PopScope(
      canPop: AppRoute.main.canPop,
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
                    state.isLogin ? const Text('Logged in') : const Text('Not logged in'),
              ),
              SliverToBoxAdapter(
                child: state.user != null
                    ? Text('User: ${state.user!.displayName}')
                    : const Text('User: null'),
              ),
              SliverToBoxAdapter(
                child: state.user != null
                    ? Text('User: ${state.user!.email}')
                    : const Text('User: null'),
              ),
              SliverToBoxAdapter(
                child: state.user != null
                    ? Text('User: ${state.user!.photoURL}')
                    : const Text('User: null'),
              ),
              SliverToBoxAdapter(
                child: state.user != null
                    ? Text('User: ${state.user!.uid}')
                    : const Text('User: null'),
              ),
              SliverToBoxAdapter(
                  child: Column(
                children: <Widget>[
                  GoogleLoginButton(
                    onPressed: () {
                      ref.read(homeScreenProvider.notifier).signInWithGoogle();
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(homeScreenProvider.notifier).signOut();
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
