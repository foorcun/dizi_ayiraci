import 'package:json_annotation/json_annotation.dart';

part 'episode.g.dart';

@JsonSerializable()
class Episode {
  String episodeName;

  Episode(this.episodeName);

  factory Episode.fromJson(Map<String, dynamic> data) =>
      _$EpisodeFromJson(data);

  Map<String, dynamic> toJson() => _$EpisodeToJson(this);

  // List<Episode> getEps() {
  //   return <Episode>[
  //     Episode('1. bölüm'),
  //     Episode('2. bölüm'),
  //     Episode('3. bölüm'),
  //     Episode('4. bölüm'),
  //     Episode('5. bölüm'),
  //     Episode('6. bölüm'),
  //     Episode('7. bölüm'),
  //     Episode('8. bölüm'),
  //     Episode('9. bölüm'),
  //     Episode('10. bölüm'),
  //   ];
  // }
}
