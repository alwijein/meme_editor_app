import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';
import 'package:meme_editor_app/feature/home/domain/use_cases/get_meme_edits.dart';
import 'package:meme_editor_app/feature/home/domain/use_cases/save_meme_edits.dart';

part 'meme_editor_state.dart';

class MemeEditorCubit extends Cubit<MemeEditorState> {
  final GetMemeEdits getMemeEdits;
  final SaveMemeEdits saveMemeEdits;
  final List<MemeEditEntity> _history = [];
  int _currentIndex = -1;

  MemeEditorCubit({required this.getMemeEdits, required this.saveMemeEdits})
    : super(MemeEditorInitial());

  bool get canUndo => _currentIndex > 0;
  bool get canRedo => _currentIndex < _history.length - 1;

  Future<void> loadEdits(String memeId) async {
    emit(MemeEditorLoading());
    final result = await getMemeEdits(memeId);

    result.fold(
      (failure) => emit(MemeEditorError(message: 'Failed to load edits')),
      (edits) {
        if (edits != null) {
          _history.clear();
          _history.add(edits);
          _currentIndex = 0;
          emit(MemeEditorLoaded(edits: edits));
        } else {
          _initializeNewEdits(memeId);
        }
      },
    );
  }

  void addText(TextElementEntity text) {
    if (state is! MemeEditorLoaded) return;

    final currentState = state as MemeEditorLoaded;
    final newEdits = currentState.edits.copyWith(
      texts: [...currentState.edits.texts, text],
    );
    _addToHistory(newEdits);
    emit(MemeEditorLoaded(edits: newEdits));
  }

  void addSticker(StickerElementEntity sticker) {
    if (state is! MemeEditorLoaded) return;

    final currentState = state as MemeEditorLoaded;
    final newEdits = currentState.edits.copyWith(
      stickers: [...currentState.edits.stickers, sticker],
    );
    _addToHistory(newEdits);
    emit(MemeEditorLoaded(edits: newEdits));
  }

  void updateElementPosition(String id, double x, double y) {
    if (state is! MemeEditorLoaded) return;

    final currentState = state as MemeEditorLoaded;

    final updatedTexts = currentState.edits.texts
        .map((text) => text.id == id ? text.copyWith(x: x, y: y) : text)
        .toList();

    final updatedStickers = currentState.edits.stickers
        .map(
          (sticker) =>
              sticker.id == id ? sticker.copyWith(x: x, y: y) : sticker,
        )
        .toList();

    final newEdits = currentState.edits.copyWith(
      texts: updatedTexts,
      stickers: updatedStickers,
    );

    _addToHistory(newEdits);
    emit(MemeEditorLoaded(edits: newEdits));
  }

  void undo() {
    if (!canUndo) return;
    _currentIndex--;
    emit(MemeEditorLoaded(edits: _history[_currentIndex]));
  }

  void redo() {
    if (!canRedo) return;
    _currentIndex++;
    emit(MemeEditorLoaded(edits: _history[_currentIndex]));
  }

  Future<void> saveEdits() async {
    if (state is! MemeEditorLoaded) return;

    final currentState = state as MemeEditorLoaded;
    emit(MemeEditorLoading());

    final result = await saveMemeEdits(
      SaveMemeEditsParams(
        memeId: currentState.edits.memeId,
        edits: currentState.edits,
      ),
    );

    result.fold(
      (failure) => emit(MemeEditorError(message: 'Failed to save edits')),
      (_) => emit(MemeEditorSaved()),
    );
  }

  void removeText(String id) {
    if (state is! MemeEditorLoaded) return;

    final currentState = state as MemeEditorLoaded;
    final newTexts = currentState.edits.texts.where((t) => t.id != id).toList();
    final newEdits = currentState.edits.copyWith(texts: newTexts);
    _addToHistory(newEdits);
    emit(MemeEditorLoaded(edits: newEdits));
  }

  void removeSticker(String id) {
    if (state is! MemeEditorLoaded) return;

    final currentState = state as MemeEditorLoaded;
    final newStickers = currentState.edits.stickers
        .where((s) => s.id != id)
        .toList();
    final newEdits = currentState.edits.copyWith(stickers: newStickers);
    _addToHistory(newEdits);
    emit(MemeEditorLoaded(edits: newEdits));
  }

  void _initializeNewEdits(String memeId) {
    final initialEdits = MemeEditEntity(
      memeId: memeId,
      texts: [],
      stickers: [],
    );
    _history.clear();
    _history.add(initialEdits);
    _currentIndex = 0;
    emit(MemeEditorLoaded(edits: initialEdits));
  }

  void _addToHistory(MemeEditEntity edits) {
    if (_currentIndex < _history.length - 1) {
      _history.removeRange(_currentIndex + 1, _history.length);
    }
    _history.add(edits);
    _currentIndex = _history.length - 1;
  }
}
