import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dizi.g.dart';

@JsonSerializable(explicitToJson: true)
class Dizi {
  String diziAdi, fotoLink;
  int sezonSayisi;
  List<Sezon> sezons = [];

  Dizi({this.diziAdi, this.fotoLink, this.sezonSayisi, this.sezons});

  Dizi.withName(this.diziAdi);

  factory Dizi.fromJson(Map<String, dynamic> data) => _$DiziFromJson(data);

  Map<String, dynamic> toJson() => _$DiziToJson(this);
}
