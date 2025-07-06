import 'package:flutter/material.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';
import 'package:meme_editor_app/feature/home/presentation/pages/meme_editor_page.dart';

class MemeGrid extends StatelessWidget {
  final List<MemeEntity> memes;

  const MemeGrid({super.key, required this.memes});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: memes.length,
      itemBuilder: (context, index) {
        final meme = memes[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  MemeEditorPage(memeUrl: meme.url, memeId: meme.id),
            ),
          ),
          child: Image.network(meme.url, fit: BoxFit.cover),
        );
      },
    );
  }
}
