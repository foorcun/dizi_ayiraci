import 'package:dizi_ayiraci/blocs/episode_bloc.dart';
import 'package:dizi_ayiraci/data/episode_service.dart';
import 'package:dizi_ayiraci/models/sezon.dart';

class SezonService {
  static List<Sezon> sezons = [];

  static SezonService _singleton = SezonService._internal();

  factory SezonService() {
    // print("asdfasdfasdfsd");
    return _singleton;
  }

  SezonService._internal();

  static List<Sezon> getAll() {
    sezons.add(
      Sezon('1. sezon', episodeBloc.getAll()),
    );
    sezons.add(
      Sezon('2. sezon', episodeBloc.getAll()),
    );
    sezons.add(
      Sezon('3. sezon', episodeBloc.getAll()),
    );
    sezons.add(
      Sezon('4. sezon', episodeBloc.getAll()),
    );
    // Sezon('1. sezon', EpisodeService().getAllDefault()),
    //   Sezon('2. sezon', EpisodeService().getAllDefault()),
    //   Sezon('3. sezon', EpisodeService().getAllDefault()),
    //   Sezon('4. sezon', EpisodeService().getAllDefault()),
    //   Sezon('5. sezon', EpisodeService().getAllDefault()),
    return sezons;
  }
}
