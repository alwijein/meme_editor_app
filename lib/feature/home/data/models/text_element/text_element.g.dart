// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TextElement _$TextElementFromJson(Map<String, dynamic> json) => _TextElement(
  id: json['id'] as String,
  text: json['text'] as String,
  x: (json['x'] as num).toDouble(),
  y: (json['y'] as num).toDouble(),
  fontSize: (json['fontSize'] as num).toDouble(),
  color: json['color'] as String,
);

Map<String, dynamic> _$TextElementToJson(_TextElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'x': instance.x,
      'y': instance.y,
      'fontSize': instance.fontSize,
      'color': instance.color,
    };
