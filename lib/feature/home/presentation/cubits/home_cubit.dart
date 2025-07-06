import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meme_editor_app/core/error/failure.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';
import 'package:meme_editor_app/feature/home/domain/use_cases/get_memes.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetMemes getMemes;
  bool isOfflineMode = false;

  HomeCubit({required this.getMemes}) : super(HomeInitial());

  Future<void> fetchMemes() async {
    emit(HomeLoading());
    final result = await getMemes(isOfflineMode);
    result.fold(
      (failure) => emit(HomeError(message: _mapFailureToMessage(failure))),
      (memes) => emit(HomeLoaded(memes: memes, originalMemes: memes)),
    );
  }

  void toggleOfflineMode(bool value) {
    isOfflineMode = value;
    fetchMemes();
  }

  void searchMemes(String query) {
    if (state is! HomeLoaded) return;

    final currentState = state as HomeLoaded;
    if (query.isEmpty) {
      emit(
        HomeLoaded(
          memes: currentState.originalMemes,
          originalMemes: [...currentState.originalMemes],
        ),
      );
      return;
    }

    final filteredMemes = currentState.originalMemes
        .where((meme) => meme.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    emit(
      HomeLoaded(
        memes: filteredMemes,
        originalMemes: currentState.originalMemes,
      ),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    return switch (failure) {
      ServerFailure() => 'Server failure',
      CacheFailure() => 'Cache failure',
      _ => 'Unexpected error',
    };
  }
}
