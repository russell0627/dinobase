import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/home_page.dart';
import 'services/theme/theme_service.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeServiceProvider);

    return MaterialApp(
      title: 'Dinobase',
      theme: themeState.light,
      darkTheme: themeState.dark,
      themeMode: themeState.mode,
      debugShowCheckedModeBanner: false,
      home: const HomePage(title: 'Dinobase'),
    );
  }
}

