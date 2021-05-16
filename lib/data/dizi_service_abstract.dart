import 'package:dizi_ayiraci/models/dizi.dart';

abstract class DiziServiceAbstract {
  List<Dizi> getAll();
  printAll();
  startFakeData();

  Dizi? findByDiziName(String diziName);
}
