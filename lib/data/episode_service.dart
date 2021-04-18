import 'package:dizi_ayiraci/models/episode.dart';

class EpisodeService {
  static List<Episode> eps = <Episode>[];

  static EpisodeService _singleton = EpisodeService._internal();

  factory EpisodeService() {
    // print("asdfasdfasdfsd");
    return _singleton;
  }

  EpisodeService._internal();

  List<Episode> getAllDefault() {
    eps = [];
    eps.add(Episode('1. bölüm'));
    eps.add(Episode('2. bölüm'));
    eps.add(Episode('3. bölüm'));
    eps.add(Episode('4. bölüm'));
    eps.add(Episode('5. bölüm'));
    eps.add(Episode('6. bölüm'));
    eps.add(Episode('7. bölüm'));
    eps.add(Episode('8. bölüm'));
    eps.add(Episode('9. bölüm'));

    return eps;
  }

  List<Episode> getAllDefault2() {
    eps = [];
    eps.add(Episode('1. bölüm'));
    eps.add(Episode('2. bölüm'));
    eps.add(Episode('3. bölüm'));
    eps.add(Episode('4. bölüm'));
    eps.add(Episode('5. bölüm'));
    eps.add(Episode('6. bölüm'));
    eps.add(Episode('7. bölüm'));
    eps.add(Episode('8. bölüm'));
    eps.add(Episode('9. bölüm'));
    eps.add(Episode('10. bölüm'));

    return eps;
  }

  List<Episode> getAllDefault3() {
    eps = [];
    eps.add(Episode('1. bölüm'));
    eps.add(Episode('2. bölüm'));
    eps.add(Episode('3. bölüm'));
    eps.add(Episode('4. bölüm'));
    eps.add(Episode('5. bölüm'));
    eps.add(Episode('6. bölüm'));
    eps.add(Episode('7. bölüm'));
    eps.add(Episode('8. bölüm'));
    eps.add(Episode('9. bölüm'));
    eps.add(Episode('10. bölüm'));
    eps.add(Episode('11. bölüm'));

    return eps;
  }
}
