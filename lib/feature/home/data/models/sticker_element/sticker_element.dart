import 'package:freezed_annotation/freezed_annotation.dart';

part 'sticker_element.freezed.dart';
part 'sticker_element.g.dart';

@freezed
abstract class StickerElement with _$StickerElement {
  const factory StickerElement({
    required String id,
    required String assetPath,
    required double x,
    required double y,
    required double width,
    required double height,
  }) = _StickerElement;

  factory StickerElement.fromJson(Map<String, dynamic> json) =>
      _$StickerElementFromJson(json);
}
