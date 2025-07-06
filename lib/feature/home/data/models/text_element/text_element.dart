import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_element.freezed.dart';
part 'text_element.g.dart';

@freezed
abstract class TextElement with _$TextElement {
  const factory TextElement({
    required String id,
    required String text,
    required double x,
    required double y,
    required double fontSize,
    required String color,
  }) = _TextElement;

  factory TextElement.fromJson(Map<String, dynamic> json) =>
      _$TextElementFromJson(json);
}
