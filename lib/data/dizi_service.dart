import 'package:dizi_ayiraci/models/dizi.dart';

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
    dizis.add(new Dizi("Attack on Titan",
        "https://upload.wikimedia.org/wikipedia/en/d/d6/Shingeki_no_Kyojin_manga_volume_1.jpg"));
    // dizis.add(new Dizi(2, "asus laptop", 7000));
    //dizis.add(new Dizi(3, "hp laptop", 8000));
    print("diziler yaratıldı");

    return dizis;
  }
}
