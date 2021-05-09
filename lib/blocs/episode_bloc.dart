import 'dart:async';

import 'package:dizi_ayiraci/data/episode_service.dart';
import 'package:dizi_ayiraci/models/episode.dart';

class EpisodeBloc {
  final epsStreamController = StreamController.broadcast();

  Stream get getStream => epsStreamController.stream;

  // List<Episode> getAll() {
  //   return EpisodeService().getAllDefault();
  // }

  // List<Episode> getAll2() {
  //   return EpisodeService().getAllDefault2();
  // }

  // List<Episode> getAll3() {
  //   return EpisodeService().getAllDefault3();
  // }
}

final episodeBloc = EpisodeBloc();
