import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tortoise_assignment/common/styles/text_theme.dart';
import 'package:tortoise_assignment/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tortoise',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: AppTypography.defaultFont,
        textTheme: AppTypography.textTheme,
      ),
      initialRoute: AppRouter.catalog,
      onGenerateRoute: AppRouter.onGenerateRoute,
      builder: (context, child) {
        if (kIsWeb) {
          return Center(
            child: Container(
              width: 393,
              constraints: const BoxConstraints(maxWidth: 393),
              child: child,
            ),
          );
        }
        return child!;
      },
    );
  }
}
