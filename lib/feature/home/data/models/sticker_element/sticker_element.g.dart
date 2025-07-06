// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StickerElement _$StickerElementFromJson(Map<String, dynamic> json) =>
    _StickerElement(
      id: json['id'] as String,
      assetPath: json['assetPath'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
    );

Map<String, dynamic> _$StickerElementToJson(_StickerElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assetPath': instance.assetPath,
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
    };
