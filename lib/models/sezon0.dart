import 'package:dizi_ayiraci/data/episode_service.dart';
import 'package:dizi_ayiraci/models/episode.dart';

class Sezon {
  String sezonAdi;

  List<Episode> episodes = [];

  Sezon.withName(this.sezonAdi);

  Sezon.withData(this.sezonAdi, this.episodes); //kısaca yazılmış constructor

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
