import 'dart:async';

import 'package:dizi_ayiraci/data/episode_service.dart';
import 'package:dizi_ayiraci/models/episode.dart';

class EpisodeBloc {
  final epsStreamController = StreamController.broadcast();

  Stream get getStream => epsStreamController.stream;

  List<Episode> getAll() {
    return EpisodeService().getAllDefault();
  }
}

final episodeBloc = EpisodeBloc();
