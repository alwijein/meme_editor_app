import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meme_editor_app/core/error/failure.dart';
import 'package:meme_editor_app/feature/home/data/data_sources/local/meme_local_data_source.dart';
import 'package:meme_editor_app/feature/home/data/data_sources/network/meme_remote_data_source.dart';
import 'package:meme_editor_app/feature/home/data/mappers/meme_mappers.dart';
import 'package:meme_editor_app/feature/home/data/models/meme/meme.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';
import 'package:meme_editor_app/feature/home/domain/repositories/meme_repository.dart';

class MemeRepositoryImpl implements MemeRepository {
  final MemeRemoteDataSource remoteDataSource;
  final MemeLocalDataSource localDataSource;

  MemeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<MemeEntity>>> getMemes(bool isOfflineMode) async {
    if (isOfflineMode) {
      try {
        final cachedMemes = await localDataSource.getCachedMemes();
        return Right(MemeMappers.mapMemeListDto(cachedMemes));
      } catch (e) {
        return Left(CacheFailure());
      }
    }

    try {
      final response = await remoteDataSource.getMemes();
      final memes = response.data?.memes ?? [];
      await localDataSource.cacheMemes(memes);
      return Right(MemeMappers.mapMemeListDto(memes));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return Left(CacheFailure());
      }
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, MemeEditEntity?>> getMemeEdits(String memeId) async {
    try {
      final edits = await localDataSource.getMemeEdits(memeId);
      return Right(edits?.toEntity());
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> saveMemeEdits(
    String memeId,
    MemeEditEntity edits,
  ) async {
    try {
      await localDataSource.saveMemeEdits(memeId, edits.toModel());
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}

extension on MemeEdit? {
  MemeEditEntity? toEntity() => this?.toEntity();
}
