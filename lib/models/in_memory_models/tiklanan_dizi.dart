// sahte data

import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';

class TiklananDizi {
  Dizi diziTiklanan;

  testDataStarter() {
    diziTiklanan = diziBloc.getAll()[0];
  }
}
