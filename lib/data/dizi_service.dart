import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/sezon.dart';

class DiziService {
  static List<Dizi> dizis = new List<Dizi>();
  //static List<Product> products = <Product>[];

  static DiziService _singleton = DiziService._internal();

  factory DiziService() {
    // print("asdfasdfasdfsd");
    return _singleton;
  }

  DiziService._internal();

  static List<Dizi> getAll() {
    List<Sezon> sezonlar;
    sezonlar.add(new Sezon("1. Sezon"));
    sezonlar.add(new Sezon("2. Sezon"));
    sezonlar.add(new Sezon("3. Sezon"));
    sezonlar.add(new Sezon("4. Sezon"));

    dizis.add(new Dizi(
        "Attack on Titan",
        "https://upload.wikimedia.org/wikipedia/en/d/d6/Shingeki_no_Kyojin_manga_volume_1.jpg",
        sezonlar));

    dizis.add(new Dizi("Dizi 2", "foto 2", sezonlar));
    // dizis.add(new Dizi(2, "asus laptop", 7000));
    //dizis.add(new Dizi(3, "hp laptop", 8000));
    print("diziler yaratıldı");

    return dizis;
  }
}
