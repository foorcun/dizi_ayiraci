import 'package:dizi_ayiraci/data/dizi_service_abstract.dart';
import 'package:dizi_ayiraci/data/sahtedata.dart';
import 'package:dizi_ayiraci/models/dizi.dart';

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
    dizis.forEach((dizis) => {print("anket item $i : " + dizis.diziAdi), i++});
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
    dizi.diziAdi = mapItem["diziAdi"];
    dizi.fotoLink = mapItem["fotoLink"];
    dizi.fotoLink = mapItem["fotoLink"];
    return dizi;
  }
}
