import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/models/sezon.dart';
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

  testWidgets('tiklanan dizi bloc ...', (tester) async {
    // TODO: Implement test

    //ARRANGE
    diziBloc.startFakeData();

    tiklananDiziBloc.setTiklananDizi("Attack on Titan");

    expect(tiklananDiziBloc.getTiklananDizi().diziTiklanan.diziAdi,
        "Attack on Titan");
  });

  testWidgets('tiklanan dizi service ...', (tester) async {
    // TODO: Implement test

    //ARRANGE
    diziBloc.startFakeData();
    tiklananDiziBloc.startFakeData();

    // tiklananDiziBloc.setTiklananDizi("Attack on Titan");
    // TiklananDiziService()
    //     .setTiklananDizi(diziBloc.findByDiziName("Attack on Titan"));

    // diziBloc.findByDiziName("Attack on Titan");
    // expect(
    //     diziBloc.findByDiziName("Attack on Titan").diziAdi, "Attack on Titan");

    print(tiklananDiziBloc.getTiklananDizi().sezonTiklanan.sezonAdi);
    expect(tiklananDiziBloc.getTiklananDizi().diziTiklanan.diziAdi,
        "Attack on Titan");

    expect(
        tiklananDiziBloc.getTiklananDizi().sezonTiklanan.sezonAdi, "1. sezon");
  });

  testWidgets('tiklanan dizi service ...', (tester) async {
    // TODO: Implement test

    //ARRANGE
    diziBloc.startFakeData();
    tiklananDiziBloc.startFakeData();

    Sezon sez = tiklananDiziBloc.getTiklananDizi().sezonTiklanan;
    print("sez.sezonAdi1 " + sez.sezonAdi);
    print("tiklananDiziBloc.getTiklananDizi().sezonTiklanan1 " +
        tiklananDiziBloc.getTiklananDizi().sezonTiklanan.sezonAdi);
    tiklananDiziBloc.getTiklananDizi().sezonTiklanan =
        diziBloc.getAll()[1].sezons[1];
    print("sez.sezonAdi2 " + sez.sezonAdi);
    print("tiklananDiziBloc.getTiklananDizi().sezonTiklanan2 " +
        tiklananDiziBloc.getTiklananDizi().sezonTiklanan.sezonAdi);

    expect(tiklananDiziBloc.getTiklananDizi().diziTiklanan.diziAdi,
        "Attack on Titan");
  });
}
