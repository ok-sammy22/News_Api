import 'package:flutter/material.dart';
import 'screens/news_home_screen.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const NewsApp()));
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News App',
      home: NewsHomeScreen(),
    );
  }
}
