import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/screens/dizi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('dizi screen title test ...', (tester) async {
    // TODO: Implement test

    //ARRANGE
    tiklananDiziBloc.startFakeData();
    Dizi diziTiklanan = tiklananDiziBloc.getTiklananDizi();

    final widget1 = find.text("1. Sezon");
    final widgetTitle = find.text("Attack on Titan");

    //ASSEMBLE
    await tester.pumpWidget(
      MaterialApp(
        home: DiziScreen(),
      ),
    );
//ACT
    await tester.pump();

    //ASSERT
    // expect(anketIsim, findsNothing);
    expect(widgetTitle, findsOneWidget);

    //'dizi screen ...'
  });

  testWidgets('dizi screen sezon  test ...', (tester) async {
    // TODO: Implement test

    //ARRANGE
    tiklananDiziBloc.startFakeData();
    Dizi diziTiklanan = tiklananDiziBloc.getTiklananDizi();

    final widgetSezon = find.text("1. Sezon");
    final widgetTitle = find.text("Attack on Titan");

    //ASSEMBLE
    await tester.pumpWidget(
      MaterialApp(
        home: DiziScreen(),
      ),
    );
//ACT
    await tester.pump();

    //ASSERT
    // expect(anketIsim, findsNothing);
    expect(widgetSezon, findsOneWidget);

    //'dizi screen ...'
  });
}
