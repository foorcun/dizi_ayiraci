import 'dart:async';

import 'package:dizi_ayiraci/data/sezon_service.dart';
import 'package:dizi_ayiraci/models/sezon.dart';

class SezonBloc {
  final sezonStreamController = StreamController.broadcast();

  Stream get getStream => sezonStreamController.stream;

  List<Sezon> getAll() {
    return SezonService.getAll();
  }
}

final sezonBloc = SezonBloc();
