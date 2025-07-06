import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_editor_app/feature/home/di/home_di.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';
import 'package:meme_editor_app/feature/home/presentation/cubits/meme_editor_cubit.dart';
import 'package:meme_editor_app/feature/home/presentation/widgets/draggable_sticker.dart';
import 'package:meme_editor_app/feature/home/presentation/widgets/draggable_text.dart';

class MemeEditorPage extends StatelessWidget {
  final String memeUrl;
  final String memeId;

  const MemeEditorPage({
    super.key,
    required this.memeUrl,
    required this.memeId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MemeEditorCubit>()..loadEdits(memeId),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            _buildUndoButton(context),
            _buildRedoButton(context),
            IconButton(
              icon: const Icon(Icons.done, color: Colors.white),
              onPressed: () => context.read<MemeEditorCubit>().saveEdits(),
            ),
          ],
        ),
        body: BlocConsumer<MemeEditorCubit, MemeEditorState>(
          listener: _handleStateChanges,
          builder: (context, state) {
            if (state is MemeEditorLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is MemeEditorError) {
              return Center(
                child: Text(
                  'Error: ${state.message}',
                  style: const TextStyle(color: Colors.white),
                ),
              );
            }
            if (state is MemeEditorLoaded) {
              return Stack(
                children: [
                  _buildMemeBackground(),
                  ..._buildEditableElements(context, state.edits),
                  _buildBottomControls(context),
                ],
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Widget _buildUndoButton(BuildContext context) {
    return BlocBuilder<MemeEditorCubit, MemeEditorState>(
      builder: (context, state) {
        final cubit = context.read<MemeEditorCubit>();
        return IconButton(
          icon: Icon(
            Icons.undo,
            color: cubit.canUndo ? Colors.white : Colors.grey,
          ),
          onPressed: cubit.canUndo ? cubit.undo : null,
        );
      },
    );
  }

  Widget _buildRedoButton(BuildContext context) {
    return BlocBuilder<MemeEditorCubit, MemeEditorState>(
      builder: (context, state) {
        final cubit = context.read<MemeEditorCubit>();
        return IconButton(
          icon: Icon(
            Icons.redo,
            color: cubit.canRedo ? Colors.white : Colors.grey,
          ),
          onPressed: cubit.canRedo ? cubit.redo : null,
        );
      },
    );
  }

  void _handleStateChanges(BuildContext context, MemeEditorState state) {
    if (state is MemeEditorSaved) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Edits saved successfully')));
      Navigator.pop(context);
    } else if (state is MemeEditorError) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: ${state.message}')));
    }
  }

  Widget _buildMemeBackground() {
    return Container(
      color: Colors.black,
      child: Center(
        child: Image.network(
          memeUrl,
          fit: BoxFit.contain,
          loadingBuilder: (context, child, progress) {
            return progress == null
                ? child
                : const Center(child: CircularProgressIndicator());
          },
          errorBuilder: (context, error, stack) {
            return const Center(child: Icon(Icons.error, color: Colors.white));
          },
        ),
      ),
    );
  }

  List<Widget> _buildEditableElements(
    BuildContext context,
    MemeEditEntity edits,
  ) {
    final cubit = context.read<MemeEditorCubit>();
    return [
      ...edits.texts.map(
        (text) => DraggableText(
          text: text,
          onDragEnd: (details) => cubit.updateElementPosition(
            text.id,
            details.localPosition.dx,
            details.localPosition.dy,
          ),
          onDelete: () => cubit.removeText(text.id),
        ),
      ),
      ...edits.stickers.map(
        (sticker) => DraggableSticker(
          sticker: sticker,
          onDragEnd: (details) => cubit.updateElementPosition(
            sticker.id,
            details.localPosition.dx,
            details.localPosition.dy,
          ),
          onDelete: () => cubit.removeSticker(sticker.id),
        ),
      ),
    ];
  }

  Widget _buildBottomControls(BuildContext context) {
    return Positioned(
      bottom: 24,
      left: 0,
      right: 0,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildControlButton(
              context,
              icon: Icons.text_fields,
              label: 'Text',
              onPressed: () => _addText(context),
            ),
            _buildControlButton(
              context,
              icon: Icons.emoji_emotions,
              label: 'Sticker',
              onPressed: () => _addSticker(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildControlButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: Colors.black.withOpacity(0.5),
          child: IconButton(
            icon: Icon(icon, color: Colors.white),
            onPressed: onPressed,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }

  void _addText(BuildContext context) {
    final cubit = context.read<MemeEditorCubit>();
    final textController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (bottomSheetContext) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(bottomSheetContext).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: textController,
                autofocus: true,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Enter text',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: Navigator.of(bottomSheetContext).pop,
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      final text = textController.text.trim();
                      if (text.isEmpty) return;

                      final newText = TextElementEntity(
                        id: DateTime.now().millisecondsSinceEpoch.toString(),
                        text: text,
                        x: MediaQuery.of(context).size.width / 2,
                        y: MediaQuery.of(context).size.height / 2,
                        fontSize: 24,
                        color: '#FFFFFF',
                      );
                      cubit.addText(newText);
                      Navigator.pop(bottomSheetContext);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Add'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _addSticker(BuildContext context) {
    final cubit = context.read<MemeEditorCubit>();
    const stickers = [
      'https://stickershop.line-scdn.net/stickershop/v1/sticker/52002734/android/sticker.png',
      'https://stickershop.line-scdn.net/stickershop/v1/sticker/52002735/android/sticker.png',
      'https://stickershop.line-scdn.net/stickershop/v1/sticker/52002736/android/sticker.png',
      'https://stickershop.line-scdn.net/stickershop/v1/sticker/52002737/android/sticker.png',
    ];

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: stickers.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final newSticker = StickerElementEntity(
                    id: DateTime.now().millisecondsSinceEpoch.toString(),
                    assetPath: stickers[index],
                    x: MediaQuery.of(context).size.width / 2,
                    y: MediaQuery.of(context).size.height / 2,
                    width: 100,
                    height: 100,
                  );
                  cubit.addSticker(newSticker);
                  Navigator.pop(context);
                },
                child: Image.network(
                  stickers[index],
                  errorBuilder: (context, error, stack) {
                    return Container(
                      color: Colors.grey,
                      child: const Icon(Icons.error),
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
