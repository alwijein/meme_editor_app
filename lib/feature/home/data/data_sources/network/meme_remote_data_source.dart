import 'package:dio/dio.dart';
import 'package:meme_editor_app/feature/home/data/models/meme_response/meme_response.dart';

abstract class MemeRemoteDataSource {
  Future<MemeResponse> getMemes();
}

class MemeRemoteDataSourceImpl implements MemeRemoteDataSource {
  final Dio dio;

  MemeRemoteDataSourceImpl({required this.dio});

  @override
  Future<MemeResponse> getMemes() async {
    final response = await dio.get('https://api.imgflip.com/get_memes');
    return MemeResponse.fromJson(response.data);
  }
}
