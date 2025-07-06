// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meme_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MemeResponse _$MemeResponseFromJson(Map<String, dynamic> json) =>
    _MemeResponse(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : MemeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MemeResponseToJson(_MemeResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_MemeData _$MemeDataFromJson(Map<String, dynamic> json) => _MemeData(
  memes: (json['memes'] as List<dynamic>?)
      ?.map((e) => Meme.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MemeDataToJson(_MemeData instance) => <String, dynamic>{
  'memes': instance.memes,
};
