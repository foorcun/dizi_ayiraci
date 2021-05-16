import 'package:dizi_ayiraci/data/episode_service.dart';
import 'package:dizi_ayiraci/models/episode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sezon.g.dart';

@JsonSerializable(explicitToJson: true)
class Sezon {
  String? sezonAdi;

  List<Episode?>? episodes = [];

  Sezon.withName(this.sezonAdi);

  Sezon(this.sezonAdi, this.episodes); //kısaca yazılmış constructor

  factory Sezon.fromJson(Map<String, dynamic> data) => _$SezonFromJson(data);

  Map<String, dynamic> toJson() => _$SezonToJson(this);

  // static List<Sezon> getSezons() {
  //   return <Sezon>[
  //     Sezon('1. sezon', EpisodeService().getAllDefault()),
  //     Sezon('2. sezon', EpisodeService().getAllDefault()),
  //     Sezon('3. sezon', EpisodeService().getAllDefault()),
  //     Sezon('4. sezon', EpisodeService().getAllDefault()),
  //     Sezon('5. sezon', EpisodeService().getAllDefault()),
  //   ];
  // }
}
