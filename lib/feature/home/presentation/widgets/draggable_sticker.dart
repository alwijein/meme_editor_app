import 'package:flutter/material.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';

class DraggableSticker extends StatefulWidget {
  final StickerElementEntity sticker;
  final Function(DragEndDetails) onDragEnd;
  final VoidCallback onDelete;

  const DraggableSticker({
    super.key,
    required this.sticker,
    required this.onDragEnd,
    required this.onDelete,
  });

  @override
  State<DraggableSticker> createState() => _DraggableStickerState();
}

class _DraggableStickerState extends State<DraggableSticker> {
  late double x;
  late double y;

  @override
  void initState() {
    super.initState();
    x = widget.sticker.x;
    y = widget.sticker.y;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      child: GestureDetector(
        onPanUpdate: (details) => setState(() {
          x += details.delta.dx;
          y += details.delta.dy;
        }),
        onPanEnd: (details) =>
            widget.onDragEnd(DragEndDetails(localPosition: Offset(x, y))),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.network(
              widget.sticker.assetPath,
              width: widget.sticker.width,
              height: widget.sticker.height,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stack) {
                return Container(
                  width: widget.sticker.width,
                  height: widget.sticker.height,
                  color: Colors.grey,
                  child: const Icon(Icons.error),
                );
              },
            ),
            Positioned(
              right: -12,
              top: -12,
              child: GestureDetector(
                onTap: widget.onDelete,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  padding: const EdgeInsets.all(2),
                  child: const Icon(Icons.close, size: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
