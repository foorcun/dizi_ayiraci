import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/data/dizi_service.dart';
import 'package:dizi_ayiraci/widgets/episodelistwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('episodelistwidget textitem1 ...', (tester) async {
    // TODO: Implement test

    //ARRANGE
    var fakeService = DiziService();
    fakeService.startFakeData();

    tiklananDiziBloc.startFakeData();

    print("test " + tiklananDiziBloc.getTiklananDizi().diziTiklanan.diziAdi);

//ARRANGE
    final listitem1 = find.text("Attack on Titan sezon 1 bölüm 1");
    final sezsay = find.text("_EpisodeListWidgetState");

    //ASSEMBLE
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: EpisodeListWidget()),
      ),
    );

    //ACT
    await tester.pump();

    //ASSERT
    // expect(anketIsim, findsNothing);
    expect(listitem1, findsOneWidget);
  });
}
