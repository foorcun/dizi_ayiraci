import 'package:dizi_ayiraci/models/sezon.dart';

class Dizi {
  String diziAdi;

  String fotoLink;

  List<Sezon> sezonlar = <Sezon>[];

  Dizi(this.diziAdi, this.fotoLink, this.sezonlar);
}
