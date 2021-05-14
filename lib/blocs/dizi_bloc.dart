import 'dart:async';

import 'package:dizi_ayiraci/data/dizi_service.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/settings/servicesettings.dart';

// import 'package:bloc_sample/data/product_service.dart';
// import 'package:bloc_sample/models/product.dart';

class DiziBloc {
  final diziStreamController = StreamController.broadcast();

  Stream get getStream => diziStreamController.stream;

  List<Dizi> getAll() {
    return seciliDiziService.getAll();
  }

  void printAll() {
    seciliDiziService.printAll();
  }

  Dizi findByDiziName(String diziName) {
    return seciliDiziService.findByDiziName(diziName);
  }

  void startFakeData() {
    seciliDiziService.startFakeData();
  }
}

final diziBloc = DiziBloc();
