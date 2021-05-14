// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sezon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sezon _$SezonFromJson(Map<String, dynamic> json) {
  return Sezon(
    json['sezonAdi'] as String,
    (json['episodes'] as List)
        ?.map((e) =>
            e == null ? null : Episode.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SezonToJson(Sezon instance) => <String, dynamic>{
      'sezonAdi': instance.sezonAdi,
      'episodes': instance.episodes?.map((e) => e?.toJson())?.toList(),
    };
