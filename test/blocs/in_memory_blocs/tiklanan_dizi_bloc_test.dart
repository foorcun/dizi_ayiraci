import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('tiklanan dizi bloc ...', (tester) async {
    // TODO: Implement test

    //ARRANGE
    diziBloc.startFakeData();

    tiklananDiziBloc.setTiklananDizi("Attack on Titan");

    expect(tiklananDiziBloc.getTiklananDizi().diziTiklanan.diziAdi,
        "Attack on Titan");
  });
}
