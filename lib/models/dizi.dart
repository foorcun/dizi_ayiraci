import 'package:dizi_ayiraci/models/sezon.dart';

class Dizi {
  String diziAdi;

  String fotoLink;

  int sezonSayisi;
  List<Sezon> sezons;

  Dizi();
  Dizi.withData(this.diziAdi, this.fotoLink, this.sezonSayisi);
}
