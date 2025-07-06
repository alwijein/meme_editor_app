part of 'meme_editor_cubit.dart';

abstract class MemeEditorState extends Equatable {
  const MemeEditorState();

  @override
  List<Object> get props => [];
}

class MemeEditorInitial extends MemeEditorState {}

class MemeEditorLoading extends MemeEditorState {}

class MemeEditorLoaded extends MemeEditorState {
  final MemeEditEntity edits;

  const MemeEditorLoaded({required this.edits});

  @override
  List<Object> get props => [edits];
}

class MemeEditorSaved extends MemeEditorState {}

class MemeEditorError extends MemeEditorState {
  final String message;

  const MemeEditorError({required this.message});

  @override
  List<Object> get props => [message];
}
