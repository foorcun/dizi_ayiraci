import 'package:dizi_ayiraci/models/episode.dart';
import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Dizi {
  String diziAdi;

  String fotoLink;

  int sezonSayisi;
  List<Sezon> sezons = [];

  Dizi();
  Dizi.withMap(list) {
    diziAdi = list.diziAdi;
    fotoLink = list.fotoLink;
    sezonSayisi = int.parse(list.sezonSayisi);
    sezons = list.sezons;
  }
//(list[index].diziAdi,
  //     list[index].fotoLink, list[index].sezonSayisi)

  Dizi.withData(this.diziAdi, this.fotoLink, this.sezonSayisi, this.sezons,
      List<Episode> episodes) {
    // Dizi.withData(Map<String, dynamic> map) {
    //createSezon(this.sezonSayisi);
    int i = 0;
    sezons.forEach((sezon) {
      print("sezon" + sezon.sezonAdi);
      // sezon.episodes.add(list[i].epsList);
      i = i + 1;
      // addEpsList(list.epsList);
    });
  }

  createSezon(int sezonSayisi) {
    int j = 1;
    //print("sezonSayisi " + sezonSayisi.toString());
    sezons = [];
    for (var i = 0; i < sezonSayisi; i++) {
      // Sezon sez = Sezon.withName("$sezonSayisi. sezon");
      // print(sez.sezonAdi);
      sezons.add(Sezon.withName("$j. sezon"));
      j = j + 1;
    }
  }
}
