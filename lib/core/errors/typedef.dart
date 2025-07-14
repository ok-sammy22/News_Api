import 'package:dartz/dartz.dart';
import 'package:news_app/core/errors/failures.dart';

typedef Result<T> = Future<Either<Failure, T>>;
typedef ApiResult<T> = Future<Either<Failure, T>>;
