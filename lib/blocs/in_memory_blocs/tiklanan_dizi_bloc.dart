import 'dart:async';

import 'package:dizi_ayiraci/data/in_memory_data/tiklanan_dizi_service.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/in_memory_models/tiklanan_dizi.dart';


class TiklananDiziBloc {
  final diziStreamController = StreamController.broadcast();

  Stream get getStream => diziStreamController.stream;

  // List<Dizi> getAll() {
  //   return seciliDiziService.getAll();
  // }

  // void printAll() {
  //   seciliDiziService.printAll();
  // }

  startFakeData() {
    // TODO: implement startFakeData
    TiklananDiziService().startFakeData();
  }

  setTiklananDizi(Dizi dizi) {
    print("setTiklananDizi: " + dizi.diziAdi);
    TiklananDiziService().setTiklananDizi(dizi);
  }

  TiklananDizi getTiklananDizi() {
    return TiklananDiziService().getTiklananDizi();
  }
}

final tiklananDiziBloc = TiklananDiziBloc();
