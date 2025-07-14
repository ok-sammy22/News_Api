import 'package:flutter/material.dart';
import 'package:news_app/features/news/data/model/news_response_model.dart';

class NewsDetailScreen extends StatelessWidget {
  final Article article;
  const NewsDetailScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News Details')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child:
                  article.urlToImage != null
                      ? ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child: Image.network(
                          article.urlToImage!,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder:
                              (_, __, ___) => const Icon(Icons.broken_image),
                        ),
                      )
                      : Container(
                        height: 200,
                        color: Colors.grey[300],
                        child: Center(
                          child: const Icon(
                            Icons.image_not_supported,
                            size: 80,
                          ),
                        ),
                      ),
            ),
            const SizedBox(height: 16),
            Text(
              article.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Published on \ ${article.publishedAt.substring(0, 10)} by ${article.source.name}',
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              article.content ?? 'No content',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
