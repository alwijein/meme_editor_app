import 'package:dartz/dartz.dart';
import 'package:meme_editor_app/core/domain/use_case.dart';
import 'package:meme_editor_app/core/error/failure.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';
import 'package:meme_editor_app/feature/home/domain/repositories/meme_repository.dart';

class GetMemes implements UseCase<List<MemeEntity>, bool> {
  final MemeRepository repository;

  GetMemes(this.repository);

  @override
  Future<Either<Failure, List<MemeEntity>>> call(bool isOfflineMode) =>
      repository.getMemes(isOfflineMode);
}
