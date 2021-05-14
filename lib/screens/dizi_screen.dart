import 'package:dizi_ayiraci/blocs/episode_bloc.dart';
import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/in_memory_models/tiklanan_dizi.dart';
import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:dizi_ayiraci/widgets/dropdownSezon.dart';
import 'package:dizi_ayiraci/widgets/episodelistwidget.dart';
import 'package:dizi_ayiraci/widgets/sezon_row_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiziScreen extends StatefulWidget {
  @override
  _DiziScreenState createState() => _DiziScreenState();
}

class _DiziScreenState extends State<DiziScreen> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // Sezon parentSezon = Sezon('benden. sezon', episodeBloc.getAll());
  Sezon parentSezon;

  void parentChange(Sezon newString) {
    setState(() {
      // print("baslangıc " + parentSezon.episodes.length.toString());

      parentSezon = newString;
      print("parentChange " + parentSezon.episodes.length.toString());
      print("bu nul mu");
    });
  }

  void sezonTikla(Sezon sez) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      tiklananDiziBloc.getTiklananDizi().sezonTiklanan = sez;
    });
  }

  @override
  void initState() {
    //Sezon sezonTiklanan = diziTiklanan.diziTiklanan.sezons[0];
    tiklananDiziBloc.getTiklananDizi().sezonTiklanan =
        tiklananDiziBloc.getTiklananDizi().diziTiklanan.sezons[0];
  }

  @override
  Widget build(BuildContext context) {
    //final ScreenArguments args =
    TiklananDizi diziTiklanan = tiklananDiziBloc.getTiklananDizi();

    // final Dizi diziTiklanan =
    //     ModalRoute.of(context).settings.arguments as Dizi; // tıklanan dizi
    // Sezon sezonTiklanan;

    //Sezon sezonTiklanan = diziTiklanan.diziTiklanan.sezons[0];
//tiklananDiziBloc.getTiklananDizi().sezonTiklanan
    return Scaffold(
      appBar: AppBar(
        title: Text(diziTiklanan.diziTiklanan.diziAdi),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(25.0),
              padding: EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // Text(tiklananDiziBloc
                  //     .getTiklananDizi()
                  //     .sezonTiklanan
                  //     .sezonAdi),
                  Text("conteinerim"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        // Text('$_counter'),
                        // Text(diziTiklanan
                        //     .diziTiklanan.sezons[_counter].sezonAdi),
                        SezonRow(sezonTikla),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
              width: 250,
              height: 250,
              child: SingleChildScrollView(
                child: EpisodeListWidget(), // column() içinde
              ),
            ),
            // Text("1. Sezon"),

            //child: Text("diziTiklanan"),
            // Row(
            //   children: [
            //     Text("sushi"),
            //     SizedBox(
            //       width: 100,
            //     ),
            //     Text("asdf"),
            //     SizedBox(
            //       width: 100,
            //     ),
            //     Text("fdsa"),
            //     SizedBox(
            //       width: 100,
            //     ),
            //     Text("wer"),
            //   ],
            // ),
            // EpisodeListWidget(diziTiklanan), //// bunu episode list widget yapcaz
          ],
        ),
      ),
    );

    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text(diziTiklanan.diziAdi),
    //     ),
    //     body: Column(
    //       children: [
    //         // Expanded(
    //         //   flex: 1,
    //         //   child: DropDownSezon(
    //         //     customFunction: parentChange,
    //         //   ),
    //         // ),
    //         // Expanded(
    //         // flex: 4,
    //         // child:
    //         ListView.builder(
    //           // itemCount: 20,
    //           itemCount: parentSezon == null ? 1 : parentSezon.episodes.length,
    //           itemBuilder: (BuildContext context, index) {
    //             final list = parentSezon.episodes;
    //             return ListTile(
    //               title: Text(parentSezon.sezonAdi == null
    //                   ? "bu listView boş"
    //                   : parentSezon.sezonAdi + " - " + list[index].episodeName),
    //               // title: Text("list of eps"),
    //             );
    //             // return Text("selammmmmmmm");
    //           },

    //           //]
    //         ),
    //         //),
    //       ],
    //     ));
    //
  }
}
