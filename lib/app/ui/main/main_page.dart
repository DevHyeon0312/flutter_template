import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/app/ui/main/provider/main_viewmodel_provider.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mainPageViewModelProvider);

    return PopScope(
      canPop: AppRoute.initial.canPop,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Main')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (text) => ref
                    .read(mainPageViewModelProvider.notifier)
                    .updateText(text),
                decoration: const InputDecoration(
                  hintText: "Enter some text",
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: state.isButtonEnabled
                    ? () => ref
                        .read(mainPageViewModelProvider.notifier)
                        .onButtonPressed()
                    : null,
                child: const Text('Go to Page B'),
              ),
              if (state.isButtonClicked) const Text('Button was clicked!'),
            ],
          ),
        ),
      ),
    );
  }
}
