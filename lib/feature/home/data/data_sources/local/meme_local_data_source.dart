import 'dart:convert';

import 'package:meme_editor_app/feature/home/data/models/meme/meme.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class MemeLocalDataSource {
  Future<List<Meme>> getCachedMemes();
  Future<void> cacheMemes(List<Meme> memes);

  Future<MemeEdit?> getMemeEdits(String memeId);
  Future<void> saveMemeEdits(String memeId, MemeEdit edits);
  Future<void> clearMemeEdits(String memeId);
}

class MemeLocalDataSourceImpl implements MemeLocalDataSource {
  final SharedPreferences sharedPreferences;

  MemeLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<Meme>> getCachedMemes() async {
    final jsonString = sharedPreferences.getString('cached_memes');
    if (jsonString == null) return [];

    final jsonList = jsonDecode(jsonString) as List;
    return jsonList.map((e) => Meme.fromJson(e)).toList();
  }

  @override
  Future<void> cacheMemes(List<Meme> memes) async {
    final jsonList = memes.map((e) => e.toJson()).toList();
    await sharedPreferences.setString('cached_memes', jsonEncode(jsonList));
  }

  @override
  Future<MemeEdit?> getMemeEdits(String memeId) async {
    final key = 'meme_edit_$memeId';
    final jsonString = sharedPreferences.getString(key);
    if (jsonString == null) return null;
    return MemeEdit.fromJson(jsonDecode(jsonString));
  }

  @override
  Future<void> saveMemeEdits(String memeId, MemeEdit edits) async {
    final key = 'meme_edit_$memeId';
    await sharedPreferences.setString(key, jsonEncode(edits.toJson()));
  }

  @override
  Future<void> clearMemeEdits(String memeId) async {
    final key = 'meme_edit_$memeId';
    await sharedPreferences.remove(key);
  }
}
