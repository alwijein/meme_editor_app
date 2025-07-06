import 'package:flutter/material.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';

class DraggableText extends StatefulWidget {
  final TextElementEntity text;
  final Function(DragEndDetails) onDragEnd;
  final VoidCallback onDelete;

  const DraggableText({
    required this.text,
    required this.onDragEnd,
    required this.onDelete,
  });

  @override
  State<DraggableText> createState() => _DraggableTextState();
}

class _DraggableTextState extends State<DraggableText> {
  late double x;
  late double y;

  @override
  void initState() {
    super.initState();
    x = widget.text.x;
    y = widget.text.y;
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
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                widget.text.text,
                style: TextStyle(
                  fontSize: widget.text.fontSize,
                  color: Color(
                    int.parse('FF${widget.text.color.substring(1)}', radix: 16),
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: -10,
              top: -10,
              child: IconButton(
                icon: const Icon(Icons.close, size: 20, color: Colors.white),
                onPressed: widget.onDelete,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
