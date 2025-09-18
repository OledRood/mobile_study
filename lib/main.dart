import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_study/core/navigation/navigator_di.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(NavigatorDi.routerProvider);

    return MaterialApp.router(
      // theme: AppTheme.light,
      // darkTheme: AppTheme.dark,
      routerConfig: goRouter,
      builder: (context, child) {
        return child!;
      },
    );
  }
}
