// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meme _$MemeFromJson(Map<String, dynamic> json) => _Meme(
  id: json['id'] as String,
  name: json['name'] as String,
  url: json['url'] as String,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  boxCount: (json['boxCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$MemeToJson(_Meme instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'url': instance.url,
  'width': instance.width,
  'height': instance.height,
  'boxCount': instance.boxCount,
};

_MemeEdit _$MemeEditFromJson(Map<String, dynamic> json) => _MemeEdit(
  memeId: json['memeId'] as String,
  texts: (json['texts'] as List<dynamic>)
      .map((e) => TextElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  stickers: (json['stickers'] as List<dynamic>)
      .map((e) => StickerElement.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MemeEditToJson(_MemeEdit instance) => <String, dynamic>{
  'memeId': instance.memeId,
  'texts': instance.texts,
  'stickers': instance.stickers,
};
