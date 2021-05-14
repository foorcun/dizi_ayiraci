import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/widgets/episodelistwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dizi_ayiraci/models/in_memory_models/tiklanan_dizi.dart';

class SezonRow extends StatefulWidget {
  @override
  _SezonRowState createState() => _SezonRowState();
}

class _SezonRowState extends State<SezonRow> {
  // Sezon clic k edSezon;

  // void setClickedSezon(Sezon clickedSezon) {
  //   setState(() {
  //     // print("baslangıc " + parentSezon.episodes.length.toString());

  //     this.clickedSezon = clickedSezon;
  //   });
  //   // return this.clickedSezon;
  // }

  TiklananDizi tiklananDizi;
  @override
  Widget build(BuildContext context) {
    // tiklananDiziBloc.startFakeData();
    tiklananDizi = tiklananDiziBloc.getTiklananDizi();

    Dizi dizi = tiklananDizi.diziTiklanan;
    print("build dizi " + dizi.diziAdi);

    // if (dizi.sezons[0].sezonAdi == null) {
    //   print("dizi.sezons[0].sezonAdi null");
    // } else {
    //   print("dizi.sezons[0].sezonAdi " + dizi.sezons[0].sezonAdi);
    // }

    print("dizisezonSayisi.length: " + dizi.sezonSayisi.toString());
    print("dizisezons.length: " + dizi.sezons.length.toString());

    List<Widget> list = sezonRowItem(dizi);
    print("list.length: " + list.length.toString());

    return Row(
      children: sezonRowItem(dizi),
      // [
      // Column(
      //   children: [
      //     Column(
      //       // Column(
      //       children: list,
      //       // children: [Text("row texti")],
      //     ),
      //     Text("bende columnun parçasıyım"),
      //     // EpisodeListWidget(this.dizi),
      //   ],
      // ),
      // EpisodeListWidget(),
      // ],
    );
  }

  List<Widget> sezonRowItem(Dizi dizi) {
    List<Widget> rowItem = [];

    for (var i = 0; i < dizi.sezons.length; i++) {
      // var clickedSezon = dizi.sezons[i];
      rowItem.add(InkWell(
        onTap: () {
          print("clickedSezon: " + dizi.sezons[i].sezonAdi);
          setState(() {
            tiklananDizi.sezonTiklanan = dizi.sezons[i];
          });
        },
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
            child: Text(dizi.sezons[i].sezonAdi)),
      )
          // rowItem.add(SizedBox(
          //   width: 100,
          // )
          );
    }

    return rowItem;
  }
}
