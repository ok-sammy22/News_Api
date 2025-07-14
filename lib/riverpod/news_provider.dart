import 'package:news_app/features/news/domain/usecase/newsusecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final newsHeadlineProvider = FutureProvider((ref) async {
  final usecase = ref.watch(topHeadlineUseCaseProvider);
  return await usecase();
});
