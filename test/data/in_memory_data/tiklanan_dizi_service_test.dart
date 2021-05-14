import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/data/in_memory_data/tiklanan_dizi_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('tiklanan dizi service ...', (tester) async {
    // TODO: Implement test

    //ARRANGE
    diziBloc.startFakeData();

    tiklananDiziBloc.setTiklananDizi("Attack on Titan");
    TiklananDiziService()
        .setTiklananDizi(diziBloc.findByDiziName("Attack on Titan"));

    // diziBloc.findByDiziName("Attack on Titan");
    // expect(
    //     diziBloc.findByDiziName("Attack on Titan").diziAdi, "Attack on Titan");
    expect(tiklananDiziBloc.getTiklananDizi().diziTiklanan.diziAdi,
        "Attack on Titan");
  });
}
