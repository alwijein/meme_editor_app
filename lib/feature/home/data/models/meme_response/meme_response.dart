import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_editor_app/feature/home/data/models/meme/meme.dart';

part 'meme_response.freezed.dart';
part 'meme_response.g.dart';

@freezed
abstract class MemeResponse with _$MemeResponse {
  const factory MemeResponse({required bool success, MemeData? data}) =
      _MemeResponse;

  factory MemeResponse.fromJson(Map<String, dynamic> json) =>
      _$MemeResponseFromJson(json);
}

@freezed
abstract class MemeData with _$MemeData {
  const factory MemeData({List<Meme>? memes}) = _MemeData;

  factory MemeData.fromJson(Map<String, dynamic> json) =>
      _$MemeDataFromJson(json);
}
