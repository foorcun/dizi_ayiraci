import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/episode.dart';
import 'package:dizi_ayiraci/models/in_memory_models/tiklanan_dizi.dart';
import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:flutter/material.dart';

class EpisodeListWidget extends StatefulWidget {
  @override
  _EpisodeListWidgetState createState() => _EpisodeListWidgetState();
}

class _EpisodeListWidgetState extends State<EpisodeListWidget> {
  TiklananDizi diziTiklanan;
  //Sezon parentSezon;

  @override
  Widget build(BuildContext context) {
    diziTiklanan = tiklananDiziBloc.getTiklananDizi();
    print("_EpisodeListWidgetState " +
        tiklananDiziBloc.getTiklananDizi().diziTiklanan.diziAdi);

    // List<Dizi> diziList = diziBloc.getAll();

    // print("dizi list");
    // // print(anketItems[0]);
    // // dbService.printAll();
    // diziBloc.printAll();

    // return Expanded(
    //   child: ListView.builder(
    //       // itemCount: getListOfSezons(diziTiklanan).length,
    //       itemCount: 5,
    //       physics: BouncingScrollPhysics(),
    //       itemBuilder: (BuildContext context, index) {
    //         List<Sezon> list = getListOfSezons(diziTiklanan);
    //         return ListTile(
    //           title: Text(list[index].sezonAdi),
    //         );
    //       }),
    // );

    //return Column(
    // children: getListOfSezons(diziTiklanan),

    // children: List.generate(10, (index) {
    //children: getListOfSezons(diziTiklanan),
    // children: List.generate(diziTiklanan.diziTiklanan.sezons.length, (index) {
    //return Text("_EpisodeListWidgetState");
    //  return getListOfSezons(diziTiklanan.diziTiklanan);
    // }),
    // [
    // LimitedBox(
    //     maxHeight: 200,
    //     child: Container(child: Text("_EpisodeListWidgetState"))),
    // LimitedBox(maxHeight: 200, child: Container(child: Text("sushi"))),
    // LimitedBox(
    //     maxHeight: 200,
    //     child: Container(child: Text("_EpisodeListWidgetState"))),
    // LimitedBox(maxHeight: 200, child: Container(child: Text("sushi"))),
    // LimitedBox(
    //     maxHeight: 200,
    //     child: Container(child: Text("_EpisodeListWidgetState"))),
    // LimitedBox(maxHeight: 200, child: Container(child: Text("sushi"))),
    // LimitedBox(
    //     maxHeight: 200,
    //     child: Container(child: Text("_EpisodeListWidgetState"))),
    // LimitedBox(maxHeight: 200, child: Container(child: Text("sushi"))),
    // LimitedBox(
    //     maxHeight: 200,
    //     child: Container(child: Text("_EpisodeListWidgetState"))),
    // LimitedBox(maxHeight: 200, child: Container(child: Text("sushi"))),
    // LimitedBox(
    //     maxHeight: 200,
    //     child: Container(child: Text("_EpisodeListWidgetState"))),
    // LimitedBox(maxHeight: 200, child: Container(child: Text("sushi"))),
    // ],
    // );
    return Column(
      // children: getListOfSezons(diziTiklanan),
      children: getListOfSezons(diziTiklanan),
      //  [
      //   Text("sushi"),
      //   Text("sushi"),
      // Text(diziTiklanan.diziTiklanan.sezons[0].sezonAdi),

      //   SizedBox(
      //     height: 100,
      //   ),
      //   Text("asdf"),
      //   SizedBox(
      //     height: 100,
      //   ),
      //   Text("fdsa"),
      //   SizedBox(
      //     height: 100,
      //   ),
      //   Text("wer"),
      //   SizedBox(
      //     height: 100,
      //   ),
      //   Text("wer"),
      //   SizedBox(
      //     height: 100,
      //   ),
      //   Text("wer"),
      //   SizedBox(
      //     height: 100,
      //   ),
      //   Text("wer"),
      // ],
    );
  }

  getListOfSezons(TiklananDizi diziTiklanan) {
    List<Widget> diziTiklananSezonsWidgets = [];
    // diziTiklananSezonsWidgets.add(Text(diziTiklanan.diziAdi));
    // diziTiklananSezonsWidgets.add(Text("_EpisodeListWidgetState"));
    // print("getListOfSezons " + diziTiklanan.diziAdi);

    diziTiklananSezonsWidgets.add(Text("getListOfSezons( içi"));
    // diziTiklananSezonsWidgets.add(Text(diziTiklanan.sezonSayisi.toString()));
    // print("getListOfSezons " + diziTiklanan.sezonSayisi.toString());

    print("diziTiklanan.diziTiklanan.diziAdi " +
        diziTiklanan.diziTiklanan.diziAdi);
    print("diziTiklanan.sezonTiklanan.sezonAdi " +
        diziTiklanan.sezonTiklanan.sezonAdi);

    print("0");

    try {
      print("a");

      print("diziTiklanan.sezonTiklanan.episodes.length " +
          diziTiklanan.sezonTiklanan.episodes.length.toString());
      diziTiklanan.sezonTiklanan.episodes.forEach((episode) {
        print("b");

        // diziTiklananSezonsWidgets.add(Text(episode.episodeName));
        try {
          print("c");

          // print(Text(episode.episodeName));
          print("episode.episodeName " + episode.episodeName);
          diziTiklananSezonsWidgets.add(Text(episode.episodeName));
        } catch (e) {
          print("olmadı");
        }
      });
    } catch (e) {
      print("hiç olmadı");
    }

    // diziTiklananSezonsWidgets.add(Text(diziTiklanan.sezons[0].sezonAdi));
    // diziTiklananSezonsWidgets
    //     .add(Text(diziTiklanan.sezons[0].episodes.length.toString()));
    // diziTiklananSezonsWidgets
    //     .add(Text(diziTiklanan.sezons[0].episodes[0].episodeName));
    // // diziTiklananSezonsWidgets
    // //     .add(Text(diziTiklanan.sezons[0].episodes[0].episodeName));
    // // diziTiklananSezonsWidgets.add(Text(parentSezon.episodes[0].episodeName));
    // Sezon sezon;

    // //  Sezon sezon = diziTiklanan.sezons
    // // .where((element) => element.episodes.contains(this.parentSezon));
    // if (sezon == null) {
    //   sezon = diziTiklanan.sezons[0];
    // }
    // sezon.episodes.forEach((element) {
    //   diziTiklananSezonsWidgets.add(Text(element.episodeName));
    // });
    return diziTiklananSezonsWidgets;
  }
}
