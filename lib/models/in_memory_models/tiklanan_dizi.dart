// sahte data

import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/sezon.dart';

class TiklananDizi {
  Dizi? _diziTiklanan;
  Sezon? _sezonTiklanan;

  Sezon? get sezonTiklanan => _sezonTiklanan;

  set sezonTiklanan(Sezon? sezonTiklanan) {
    _sezonTiklanan = sezonTiklanan;
  }

  testDataStarter() {
    diziTiklanan = diziBloc.getAll()[0];
    sezonTiklanan = diziBloc.getAll()[0].sezons![0];
  }

  Dizi? get diziTiklanan {
    return _diziTiklanan;
  }

  set diziTiklanan(Dizi? diziTiklanan) {
    _diziTiklanan = diziTiklanan;
    sezonTiklanan = diziTiklanan!.sezons![0];
  }
}
