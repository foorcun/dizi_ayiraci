import 'dart:async';

import 'package:dizi_ayiraci/data/dizi_service.dart';
import 'package:dizi_ayiraci/models/dizi.dart';

// import 'package:bloc_sample/data/product_service.dart';
// import 'package:bloc_sample/models/product.dart';

class DiziBloc {
  final diziStreamController = StreamController.broadcast();

  Stream get getStream => diziStreamController.stream;

  List<Dizi> getAll() {
    return DiziService.getAll();
  }
}

final diziBloc = DiziBloc();
