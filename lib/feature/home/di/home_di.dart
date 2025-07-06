import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meme_editor_app/feature/home/presentation/cubits/home_cubit.dart';
import 'package:meme_editor_app/feature/home/presentation/cubits/meme_editor_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meme_editor_app/feature/home/data/data_sources/local/meme_local_data_source.dart';
import 'package:meme_editor_app/feature/home/data/data_sources/network/meme_remote_data_source.dart';
import 'package:meme_editor_app/feature/home/data/repositories/meme_repository_impl.dart';
import 'package:meme_editor_app/feature/home/domain/repositories/meme_repository.dart';
import 'package:meme_editor_app/feature/home/domain/use_cases/get_memes.dart';
import 'package:meme_editor_app/feature/home/domain/use_cases/get_meme_edits.dart';
import 'package:meme_editor_app/feature/home/domain/use_cases/save_meme_edits.dart';

final sl = GetIt.instance;
Future<void> initHomeDI() async {
  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerLazySingleton<MemeRemoteDataSource>(
    () => MemeRemoteDataSourceImpl(dio: sl()),
  );

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<MemeLocalDataSource>(
    () => MemeLocalDataSourceImpl(sharedPreferences: sharedPreferences),
  );

  sl.registerLazySingleton<MemeRepository>(
    () => MemeRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  sl.registerLazySingleton(() => GetMemes(sl()));
  sl.registerLazySingleton(() => GetMemeEdits(sl()));
  sl.registerLazySingleton(() => SaveMemeEdits(sl()));

  sl.registerFactory(() => HomeCubit(getMemes: sl()));
  sl.registerFactory(
    () => MemeEditorCubit(getMemeEdits: sl(), saveMemeEdits: sl()),
  );
}
