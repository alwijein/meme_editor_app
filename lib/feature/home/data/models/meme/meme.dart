import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_editor_app/feature/home/data/models/sticker_element/sticker_element.dart';
import 'package:meme_editor_app/feature/home/data/models/text_element/text_element.dart';

part 'meme.freezed.dart';
part 'meme.g.dart';

@freezed
abstract class Meme with _$Meme {
  const factory Meme({
    required String id,
    required String name,
    required String url,
    int? width,
    int? height,
    int? boxCount,
  }) = _Meme;

  factory Meme.fromJson(Map<String, dynamic> json) => _$MemeFromJson(json);
}

@freezed
abstract class MemeEdit with _$MemeEdit {
  const factory MemeEdit({
    required String memeId,
    required List<TextElement> texts,
    required List<StickerElement> stickers,
  }) = _MemeEdit;

  factory MemeEdit.fromJson(Map<String, dynamic> json) =>
      _$MemeEditFromJson(json);
}
