import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/models/in_memory_models/tiklanan_dizi.dart';
import 'package:dizi_ayiraci/screens/dizi_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('dizi list screen ...', (tester) async {
    //ARRANGE
    tiklananDiziBloc.startFakeData();

    TiklananDizi diziTiklanan = tiklananDiziBloc.getTiklananDizi();
    print("diziTiklanan.diziTiklanan.diziAdi " +
        diziTiklanan.diziTiklanan.diziAdi);

    print("diziTiklanan.diziTiklanan.sezonAdi " +
        diziTiklanan.sezonTiklanan.sezonAdi);
    print("diziTiklanan.diziTiklanan.episodeName " +
        diziTiklanan.sezonTiklanan.episodes[0].episodeName);

    final widget1 = find.text("1. Sezon");
    final widgetTitle = find.text("Attack on Titan");

    //ASSEMBLE
    await tester.pumpWidget(
      MaterialApp(
        home: DizisListScreen(),
      ),
    );
//ACT
    await tester.tap(widgetTitle);

    await tester.pump();

    //ASSERT
    // expect(widgetTitle, findsNothing);
    //expect(widgetTitle, findsOneWidget);
  });
}
