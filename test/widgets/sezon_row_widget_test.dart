import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/widgets/sezon_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('sezon row widget ...', (tester) async {
    //ARRANGE
    tiklananDiziBloc.startFakeData();
    //Dizi diziTiklanan = tiklananDiziBloc.getTiklananDizi();
    print(tiklananDiziBloc.getTiklananDizi().diziAdi);
    final widgetSss = find.text("bende columnun parçasıyım");
    final widgetSezon = find.text("1. sezon");

    //ASSEMBLE
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: SezonRow()),
      ),
    );
//ACT
    await tester.pump();

    //ASSERT
    // expect(anketIsim, findsNothing);
    expect(widgetSezon, findsOneWidget);

    //'dizi screen ...'
  });

//   test('sezon row list ...', () async {
//     //ARRANGE
//     tiklananDiziBloc.startFakeData();
//     //Dizi diziTiklanan = tiklananDiziBloc.getTiklananDizi();

//     final widgetSezon = find.text("bende");

//     //ASSEMBLE
//     SezonRow sezonRow = SezonRow();

// //ACT

//     //ASSERT
//     // expect(anketIsim, findsNothing);
//     expect(sezonRow.list, findsOneWidget);

//     //'dizi screen ...'
//   });
}
