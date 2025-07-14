import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/riverpod/news_provider.dart';
import 'package:news_app/widgets/news_card.dart';
import 'package:news_app/widgets/shimmer.dart';

class NewsHomeScreen extends ConsumerWidget {
  const NewsHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(newsHeadlineProvider);
    Future<void> _fetchnews() async {
      ref.invalidate(newsHeadlineProvider);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Headlines"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(newsHeadlineProvider);
            },
          ),
        ],
      ),
      body: result.when(
        loading:
            () => ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const NewsShimmerCard(),
            ),
        error: (error, _) => Center(child: Text("Error: $error")),
        data:
            (either) => either.fold(
              (failure) => Center(child: Text(failure.message)),
              (response) {
                final articles = response.articles;
                return RefreshIndicator(
                  onRefresh: _fetchnews,
                  child: ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      final article = articles[index];
                      return NewsCard(article: article);
                    },
                  ),
                );
              },
            ),
      ),
    );
  }
}
