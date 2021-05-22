import 'dart:async';

import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
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

  // startFakeData() {
  //   // TODO: implement startFakeData
  //   TiklananDiziService().startFakeData();
  // }

  setTiklananDizi(String diziName) {
    print("setTiklananDizi: " + diziName);
    TiklananDiziService().setTiklananDizi(diziBloc.findByDiziName(diziName)!);
  }

  TiklananDizi getTiklananDizi() {
    return TiklananDiziService().getTiklananDizi();
  }

  // setTiklananSezon(int sezonKacinci) {
  //   print("setTiklananSezon: " + sezonKacinci.toString());
  //   TiklananDiziService().setTiklananDizi(diziBloc.findByDiziName(diziName));
  // }

  // TiklananDizi getTiklananSezon() {
  //   return TiklananDiziService().getTiklananDizi();
  // }
}

final tiklananDiziBloc = TiklananDiziBloc();
