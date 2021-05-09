import 'package:dizi_ayiraci/data/dizi_service_abstract.dart';
import 'package:dizi_ayiraci/data/sahtedata.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/episode.dart';
import 'package:dizi_ayiraci/models/sezon.dart';

class DiziService extends DiziServiceAbstract {
  // static List<Dizi> dizis = new List<Dizi>();
  static List<Dizi> dizis = [];
  //static List<Product> products = <Product>[];

  static DiziService _singleton = DiziService._internal();

  factory DiziService() {
    // print("asdfasdfasdfsd");
    return _singleton;
  }

  DiziService._internal();

  @override
  List<Dizi> getAll() {
    // dizis.add(new Dizi("Attack on Titan",
    //     "https://upload.wikimedia.org/wikipedia/en/d/d6/Shingeki_no_Kyojin_manga_volume_1.jpg"));

    // dizis.add(new Dizi("Dizi 2", "foto 2"));
    // // dizis.add(new Dizi(2, "asus laptop", 7000));
    // //dizis.add(new Dizi(3, "hp laptop", 8000));
    // print("diziler yaratıldı");
    //
    this.startFakeData();

    return dizis;
  }

  printAll() {
    int i = 0;
    dizis.forEach((dizi) => {
          print("dizi diziAdi $i : " +
              dizi.diziAdi +
              " dizi fotoLink $i : " +
              dizi.fotoLink +
              " dizi sezonSayisi $i : " +
              dizi.sezonSayisi.toString() +
              " dizi sezons sayısı length ile $i : " +
              dizi.sezons.length.toString()),
          " dizi ilksezon episode sayısı length ile $i : " +
              dizi.sezons[0].epList.length.toString(),
          i = i + 1
        });
  }

  void startFakeData() {
    if (dizis.isEmpty) {
      for (var i = 0; i < sahteSnapshot.length; i++) {
        // anketItems[i] = this.fromMap(sahteSnapshot[i]);
        dizis.add(this.fromMap(sahteSnapshot[i]));
      }
    }
  }

  Dizi fromMap(Map<String, dynamic> mapItem) {
    Dizi dizi = Dizi();
    assert(mapItem["diziAdi"] != null);
    assert(mapItem["fotoLink"] != null);
    assert(mapItem["sezonSayisi"] != null);
    assert(mapItem["sezons"] != null);
    dizi.diziAdi = mapItem["diziAdi"];
    dizi.fotoLink = mapItem["fotoLink"];
    dizi.sezonSayisi = mapItem["sezonSayisi"];
    dizi.sezons = this.sezonFromMap(mapItem["sezons"]);

    // int j = 1;
    // for (var i = 0; i < dizi.sezonSayisi; i++) {
    //   dizi.sezons.add(Sezon.withName("$j. Sezon"));
    //   j++;
    // }

    return dizi;
  }

  List<Sezon> sezonFromMap(List<Map<String, dynamic>> mapItem) {
    List<Sezon> listSezon = [];
    // Sezon.withName(mapItem["sezons"]);
    // mapItem.forEach((sezon) => {print(sezon["sezonAdi"])});
    mapItem
        //.forEach((sezon) => {listSezon.add(Sezon.withName(sezon["sezonAdi"]))});
        .forEach((sezon) => {
              listSezon.add(Sezon.withData(
                  sezon["sezonAdi"], this.episodesFromMap(sezon["episodes"])))
            });
    // print(mapItem.toString());
    // print("sezonFromMap " + listSezon.toString());
    return listSezon;
  }

  List<Episode> episodesFromMap(List<Map<String, String>> mapItem) {
    List<Episode> listEpisode = [];
    // Sezon.withName(mapItem["sezons"]);
    // mapItem.forEach((sezon) => {print(sezon["sezonAdi"])});
    mapItem.forEach(
        (episode) => {listEpisode.add(Episode.withName(episode["bölümAdi"]))});
    // (sezon) => {listEpisode.add(Episode.withData(sezon["sezonAdi"]))});
    //print(mapItem.toString());
    return listEpisode;
  }
}
