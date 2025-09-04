import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/constants/app_strings.dart';
import 'src/core/firebase_options.dart';
import 'src/routing/app_router.dart';
import 'src/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Don't block app launch if Firebase options are placeholders.
  try {
    final opts = DefaultFirebaseOptions.currentPlatform;
    final hasRealOptions =
        opts.apiKey != 'TODO' && opts.appId != 'TODO' && opts.projectId != 'TODO';
    if (hasRealOptions) {
      await Firebase.initializeApp(options: opts);
    } else {
      debugPrint('Skipping Firebase.initializeApp: placeholder options detected.');
    }
  } catch (e, st) {
    debugPrint('Firebase initialization failed: $e');
    debugPrint('$st');
  }
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appTitle,
      routerConfig: appRouter,
      theme: AppTheme.dark(),
    );
  }
}
