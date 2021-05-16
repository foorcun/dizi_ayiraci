import 'dart:convert';

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
    if (dizis == []) {
      this.startFakeData();
    }
    this.startFakeData();

    return dizis;
  }

  printAll() {
    int i = 0;
    dizis.forEach((dizi) => {
          print("dizi diziAdi $i : " +
              dizi.diziAdi +
              " dizi fotoLink $i : " +
              dizi.fotoLink! +
              " dizi sezonSayisi $i : " +
              dizi.sezonSayisi.toString() +
              " dizi sezons sayısı length ile $i : " +
              dizi.sezons!.length.toString()),
          " dizi ilksezon episode sayısı length ile $i : " +
              dizi.sezons![0]!.episodes!.length.toString(),
          i = i + 1
        });
  }

  void startFakeData() {
    // if (dizis.isEmpty) {
    //   for (var i = 0; i < sahteSnapshot.length; i++) {
    //     // anketItems[i] = this.fromMap(sahteSnapshot[i]);
    //     dizis.add(this.fromMap(sahteSnapshot[i]));
    //   }
    // }
    List<dynamic> data = jsonDecode(sahteString);
    dizis = data.map((data) => Dizi.fromJson(data)).toList();
  }

  // Dizi fromMap(Map<String, dynamic> mapItem) {
  //   Dizi dizi = Dizi();
  //   // assert(mapItem["diziAdi"] != null);
  //   // assert(mapItem["fotoLink"] != null);
  //   // assert(mapItem["sezonSayisi"] != null);
  //   // assert(mapItem["sezons"] != null);
  //   // assert(mapItem["sezons"] != null);
  //   // dizi.diziAdi = mapItem["diziAdi"];
  //   // dizi.fotoLink = mapItem["fotoLink"];
  //   // dizi.sezonSayisi = mapItem["sezonSayisi"];
  //   // dizi.sezons = this.sezonFromMap(mapItem["sezons"]);

  //   // // this.episodeSeparator(mapItem["sezons"]);
  //   // // // int j = 1;
  //   // // // for (var i = 0; i < dizi.sezonSayisi; i++) {
  //   // // //   dizi.sezons.add(Sezon.withName("$j. Sezon"));
  //   // // //   j++;
  //   // // // }
  //   // print("fromMap " + dizi.sezons[0].episodes[0].episodeName);
  //   // // int i = 0;
  //   // // dizi.sezons.forEach((sezon) {
  //   // //   print("sezon " + sezon.sezonAdi);
  //   // //   sezon.episodes.add(list[i].epsList);
  //   // //   i = i + 1;
  //   // //   // addEpsList(list.epsList);
  //   // // });

  //   return dizi;
  // }

  List<Sezon> sezonFromMap(List<Map<String, dynamic>> mapItem) {
    List<Sezon> listSezon = [];
    // // Sezon.withName(mapItem["sezons"]);
    // // mapItem.forEach((sezon) => {print(sezon["sezonAdi"])});
    // print("sezonFromMap ");
    // int i = 0;
    // mapItem
    //     //.forEach((sezon) => {listSezon.add(Sezon.withName(sezon["sezonAdi"]))});
    //     .forEach((sezon) => {
    //           print("sezonFromMap " + sezon["episodes"][i].toString()),
    //           listSezon.add(Sezon.withData(
    //               sezon["sezonAdi"], this.episodesFromMap(sezon["episodes"]))),
    //           i = i + 1,
    //         });
    // // print(mapItem.toString());
    // // print("sezonFromMap " + listSezon.toString());
    return listSezon;
  }

  List<Episode> episodesFromMap(List<Map<String, String>> mapItem) {
    List<Episode> listEpisode = [];
    // // Sezon.withName(mapItem["sezons"]);
    // // mapItem.forEach((sezon) => {print(sezon["sezonAdi"])});
    // mapItem.forEach(
    //     (episode) => {listEpisode.add(Episode.withName(episode["bölümAdi"]))});
    // // (sezon) => {listEpisode.add(Episode.withData(sezon["sezonAdi"]))});
    // //print(mapItem.toString());
    return listEpisode;
  }

  Dizi? findByDiziName(String diziName) {
    Dizi? _dizi;

    dizis.forEach((dizi) {
      // print("dizi.diziAdi " + dizi.diziAdi);
      if (dizi.diziAdi == diziName) {
        print("bulunan dizi" + dizi.diziAdi);
        _dizi = dizi;
      }
    });
    print("_dizi adı " + _dizi!.diziAdi);
    return _dizi;
  }
}
