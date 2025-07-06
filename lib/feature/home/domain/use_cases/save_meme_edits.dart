import 'package:dartz/dartz.dart';
import 'package:meme_editor_app/core/domain/use_case.dart';
import 'package:meme_editor_app/core/error/failure.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';
import 'package:meme_editor_app/feature/home/domain/repositories/meme_repository.dart';

class SaveMemeEdits implements UseCase<void, SaveMemeEditsParams> {
  final MemeRepository repository;

  SaveMemeEdits(this.repository);

  @override
  Future<Either<Failure, void>> call(SaveMemeEditsParams params) =>
      repository.saveMemeEdits(params.memeId, params.edits);
}

class SaveMemeEditsParams {
  final String memeId;
  final MemeEditEntity edits;

  SaveMemeEditsParams({required this.memeId, required this.edits});
}
