import 'package:dizi_ayiraci/models/episode.dart';
import 'package:dizi_ayiraci/models/sezon.dart';

class Dizi {
  String diziAdi;

  String fotoLink;

  int sezonSayisi;
  List<Sezon> sezons = [];

  List<Episode> epsList = [];

  Dizi();
  Dizi.withMap(list) {
    diziAdi = list.diziAdi;
    fotoLink = list.fotoLink;
    sezonSayisi = int.parse(list.sezonSayisi);
    sezons = list.sezons;
    epsList = list.epsList;
  }
//(list[index].diziAdi,
  //     list[index].fotoLink, list[index].sezonSayisi)

  Dizi.withData(this.diziAdi, this.fotoLink, this.sezonSayisi, this.sezons,
      this.epsList) {
    // Dizi.withData(Map<String, dynamic> map) {
    createSezon(this.sezonSayisi);
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
