import 'package:dizi_ayiraci/data/dizi_service_abstract.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/in_memory_models/tiklanan_dizi.dart';

class TiklananDiziService extends DiziServiceAbstract {
  // static List<Dizi> dizis = new List<Dizi>();
  static TiklananDizi tiklananDizi = TiklananDizi();
  //static List<Product> products = <Product>[];

  static TiklananDiziService _singleton = TiklananDiziService._internal();

  factory TiklananDiziService() {
    // print("asdfasdfasdfsd");
    return _singleton;
  }

  TiklananDiziService._internal();

  @override
  List<Dizi> getAll() {
    // TODO: implement getAll
    // throw UnimplementedError();
    return null;
  }

  @override
  printAll() {
    // TODO: implement printAll
    // throw UnimplementedError();
    return null;
  }

  @override
  startFakeData() {
    // TODO: implement startFakeData
    tiklananDizi.testDataStarter();
  }

  setTiklananDizi(Dizi dizi) {
    // tiklananDizi.diziTiklanan = null;
    tiklananDizi.diziTiklanan = dizi;
  }

  TiklananDizi getTiklananDizi() {
    return tiklananDizi;
  }
}
