import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/main/provider/main_tab_provider.dart';
import 'package:flutter_template/app/ui/page/animation_component/animation_component_page.dart';
import 'package:flutter_template/app/ui/page/basic_component/basic_component_page.dart';
import 'package:flutter_template/app/ui/page/home/home_page.dart';
import 'package:flutter_template/app/ui/page/practical_component/practical_component_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int currentIndex = ref.watch(mainTabIndexProvider);

    return PopScope(
      canPop: AppRoute.initial.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Main')),
        body: IndexedStack(
          index: currentIndex,
          children: const [
            HomePage(),
            BasicComponentPage(),
            AnimationComponentPage(),
            PracticalComponentPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            ref.read(mainTabIndexProvider.notifier).state = index;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_rounded), label: 'Basic'),
            BottomNavigationBarItem(
                icon: Icon(Icons.animation), label: 'Animation'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Practical'),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
