import 'package:dartz/dartz.dart';
import 'package:meme_editor_app/core/error/failure.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';

abstract class MemeRepository {
  Future<Either<Failure, List<MemeEntity>>> getMemes(bool isOfflineMode);
  Future<Either<Failure, MemeEditEntity?>> getMemeEdits(String memeId);
  Future<Either<Failure, void>> saveMemeEdits(
    String memeId,
    MemeEditEntity edits,
  );
}
