// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dizi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dizi _$DiziFromJson(Map<String, dynamic> json) {
  return Dizi(
    diziAdi: json['diziAdi'] as String,
    fotoLink: json['fotoLink'] as String,
    sezonSayisi: json['sezonSayisi'] as int,
    sezons: (json['sezons'] as List)
        ?.map(
            (e) => e == null ? null : Sezon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DiziToJson(Dizi instance) => <String, dynamic>{
      'diziAdi': instance.diziAdi,
      'fotoLink': instance.fotoLink,
      'sezonSayisi': instance.sezonSayisi,
      'sezons': instance.sezons?.map((e) => e?.toJson())?.toList(),
    };
