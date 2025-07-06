import 'package:dartz/dartz.dart';
import 'package:meme_editor_app/core/domain/use_case.dart';
import 'package:meme_editor_app/core/error/failure.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';
import 'package:meme_editor_app/feature/home/domain/repositories/meme_repository.dart';

class GetMemeEdits implements UseCase<MemeEditEntity?, String> {
  final MemeRepository repository;

  GetMemeEdits(this.repository);

  @override
  Future<Either<Failure, MemeEditEntity?>> call(String memeId) =>
      repository.getMemeEdits(memeId);
}
