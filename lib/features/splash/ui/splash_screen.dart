import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_study/features/splash/splash_di.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(SplashDi.splashViewModel.notifier);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Its splash screen'),
          onPressed: () {
            vm.goToHome();
          },
        ),
      ),
    );
  }
}
