import 'package:meme_editor_app/feature/home/data/models/meme/meme.dart';
import 'package:meme_editor_app/feature/home/data/models/sticker_element/sticker_element.dart';
import 'package:meme_editor_app/feature/home/data/models/text_element/text_element.dart';

class MemeEntity {
  final String id;
  final String name;
  final String url;
  final int? width;
  final int? height;
  final int? boxCount;

  const MemeEntity({
    required this.id,
    required this.name,
    required this.url,
    this.width,
    this.height,
    this.boxCount,
  });
}

class MemeEditEntity {
  final String memeId;
  final List<TextElementEntity> texts;
  final List<StickerElementEntity> stickers;

  const MemeEditEntity({
    required this.memeId,
    required this.texts,
    required this.stickers,
  });

  MemeEdit toModel() => MemeEdit(
    memeId: memeId,
    texts: texts.map((e) => e.toModel()).toList(),
    stickers: stickers.map((e) => e.toModel()).toList(),
  );

  MemeEditEntity copyWith({
    String? memeId,
    List<TextElementEntity>? texts,
    List<StickerElementEntity>? stickers,
  }) {
    return MemeEditEntity(
      memeId: memeId ?? this.memeId,
      texts: texts ?? this.texts,
      stickers: stickers ?? this.stickers,
    );
  }
}

class TextElementEntity {
  final String id;
  final String text;
  final double x;
  final double y;
  final double fontSize;
  final String color;

  const TextElementEntity({
    required this.id,
    required this.text,
    required this.x,
    required this.y,
    required this.fontSize,
    required this.color,
  });

  TextElement toModel() => TextElement(
    id: id,
    text: text,
    x: x,
    y: y,
    fontSize: fontSize,
    color: color,
  );

  TextElementEntity copyWith({
    String? id,
    String? text,
    double? x,
    double? y,
    double? fontSize,
    String? color,
  }) {
    return TextElementEntity(
      id: id ?? this.id,
      text: text ?? this.text,
      x: x ?? this.x,
      y: y ?? this.y,
      fontSize: fontSize ?? this.fontSize,
      color: color ?? this.color,
    );
  }
}

class StickerElementEntity {
  final String id;
  final String assetPath;
  final double x;
  final double y;
  final double width;
  final double height;

  const StickerElementEntity({
    required this.id,
    required this.assetPath,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
  });

  StickerElement toModel() => StickerElement(
    id: id,
    assetPath: assetPath,
    x: x,
    y: y,
    width: width,
    height: height,
  );

  StickerElementEntity copyWith({
    String? id,
    String? assetPath,
    double? x,
    double? y,
    double? width,
    double? height,
  }) {
    return StickerElementEntity(
      id: id ?? this.id,
      assetPath: assetPath ?? this.assetPath,
      x: x ?? this.x,
      y: y ?? this.y,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }
}
