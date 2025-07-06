part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<MemeEntity> memes;
  final List<MemeEntity> originalMemes;

  const HomeLoaded({required this.memes, required this.originalMemes});

  @override
  List<Object> get props => [memes, originalMemes];
}

class HomeError extends HomeState {
  final String message;

  const HomeError({required this.message});

  @override
  List<Object> get props => [message];
}
