import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dizi_ayiraci/data/dizi_service_abstract.dart';
import 'package:dizi_ayiraci/data/sahtedata.dart';
import 'package:dizi_ayiraci/main.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/episode.dart';
import 'package:dizi_ayiraci/models/sezon.dart';

class FirebaseDiziService {
  static List<Dizi> dizis = [];

  static FirebaseDiziService _singleton = FirebaseDiziService._internal();

  factory FirebaseDiziService() {
    return _singleton;
  }

  FirebaseDiziService._internal();

  Future<List<Dizi>> getAll() async {
    // getAll() async {
    if (dizis == []) {
      // this.startFakeData();

      final CollectionReference refi =
          firestoreManager.collection('dizi-ayraci');

      final movrefi = refi.doc("bEaBU6L7RrohlNTftTvA");

      var response = await movrefi.get();
      var asdf = response.data();

      if (response.data() == null) {
        // Dizi.withName(response.data()["diziAdi"]);
      } else {
        // Dizi.withName(response.data()["diziAdi"]);
      }
      // Dizi.withName(response.data() == null
      //     ? print("null bu")
      //     : response.data()["diziAdi"]);
    }

    var response = await movrefi.get();
    print("response.data() " + response.data().toString());
    Dizi.withName(response.data()!["diziAdi"]);
    return dizis;
  }

  printAll() {
    this.getAll();
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

  List<Sezon> sezonFromMap(List<Map<String, dynamic>> mapItem) {
    List<Sezon> listSezon = [];

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
