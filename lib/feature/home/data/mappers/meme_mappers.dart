import 'package:meme_editor_app/feature/home/data/models/meme/meme.dart';
import 'package:meme_editor_app/feature/home/domain/entities/meme.dart';

class MemeMappers {
  static MemeEntity mapMemeDto(Meme dto) {
    return MemeEntity(
      id: dto.id,
      name: dto.name,
      url: dto.url,
      width: dto.width,
      height: dto.height,
      boxCount: dto.boxCount,
    );
  }

  static List<MemeEntity> mapMemeListDto(List<Meme>? dtos) {
    return dtos?.map(mapMemeDto).toList() ?? [];
  }
}
