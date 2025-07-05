import 'package:dartz/dartz.dart';
import 'package:meme_editor_app/core/domain/models/error_dto.dart';

typedef EitherError<T> = Either<ErrorDto, T>;
typedef FutureOrError<T> = Future<EitherError<T>>;
