import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/episode.dart';
import 'package:dizi_ayiraci/models/in_memory_models/tiklanan_dizi.dart';
import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:flutter/material.dart';

class EpisodeListWidget extends StatefulWidget {
  EpisodeListWidget();

  @override
  _EpisodeListWidgetState createState() => _EpisodeListWidgetState();
}

class _EpisodeListWidgetState extends State<EpisodeListWidget> {
  //Sezon parentSezon;

//set state adım 1
  List<Episode> diziTiklananEpisodes = [];
  @override
  Widget build(BuildContext context) {
    //diziTiklanan = tiklananDiziBloc.getTiklananDizi();
    print("_EpisodeListWidgetState " +
        tiklananDiziBloc.getTiklananDizi().diziTiklanan.diziAdi);
    // sez = diziTiklanan.sezonTiklanan;
    print("Sezon sez;" +
        tiklananDiziBloc.getTiklananDizi().sezonTiklanan.sezonAdi);

    getListOfEpisodes();

    return Column(
      children: getListOfEpisodes(),
      // children: [
      //   Text(diziTiklananEpisodes[0].episodeName),
      // ],
    );
  }

  getListOfEpisodes() {
    List<Widget> diziTiklananEpisodesWidgets = [];

    print("diziTiklanan.diziTiklanan.diziAdi " +
        tiklananDiziBloc.getTiklananDizi().diziTiklanan.diziAdi);
    print("diziTiklanan.sezonTiklanan.sezonAdi " +
        tiklananDiziBloc.getTiklananDizi().sezonTiklanan.sezonAdi);

    print("0");

    try {
      print("a");

      print("diziTiklanan.sezonTiklanan.episodes.length " +
          tiklananDiziBloc
              .getTiklananDizi()
              .sezonTiklanan
              .episodes
              .length
              .toString());

      int i = 0;
      tiklananDiziBloc
          .getTiklananDizi()
          .sezonTiklanan
          .episodes
          .forEach((episode) {
        print("b");

        // diziTiklananSezonsWidgets.add(Text(episode.episodeName));
        try {
          print("c");

          // print(Text(episode.episodeName));
          print("episode.episodeName " + episode.episodeName);
          diziTiklananEpisodesWidgets.add(TextEpisode(i)
              //   Text(
              //   episode.episodeName,
              //   style: TextStyle(
              //     backgroundColor:
              //         (episode.isWatched == true) ? Colors.green : Colors.red,
              //   ),
              // )
              );

          setState(() {
            diziTiklananEpisodes.add(episode);
          });
        } catch (e) {
          print("olmadı");
        }

        i = i + 1;
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

    return diziTiklananEpisodesWidgets;
  }
}

class TextEpisode extends StatefulWidget {
  int episodeNo;
  TextEpisode(this.episodeNo);
  @override
  _TextEpisodeState createState() => _TextEpisodeState();
}

class _TextEpisodeState extends State<TextEpisode> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (tiklananDiziBloc
                  .getTiklananDizi()
                  .sezonTiklanan
                  .episodes[widget.episodeNo]
                  .isWatched ==
              true) {
            tiklananDiziBloc
                .getTiklananDizi()
                .sezonTiklanan
                .episodes[widget.episodeNo]
                .isWatched = false;
          } else {
            tiklananDiziBloc
                .getTiklananDizi()
                .sezonTiklanan
                .episodes[widget.episodeNo]
                .isWatched = true;
          }
        });
      },
      child: Container(
        margin: EdgeInsets.all(25.0),
        padding: EdgeInsets.all(40.0),
        child: Text(
          tiklananDiziBloc
                  .getTiklananDizi()
                  .sezonTiklanan
                  .episodes[widget.episodeNo]
                  .episodeName +
              " : " +
              tiklananDiziBloc
                  .getTiklananDizi()
                  .sezonTiklanan
                  .episodes[widget.episodeNo]
                  .isWatched
                  .toString(),
          style: TextStyle(
            color: Colors.white,
            backgroundColor: (tiklananDiziBloc
                        .getTiklananDizi()
                        .sezonTiklanan
                        .episodes[widget.episodeNo]
                        .isWatched ==
                    true)
                ? Colors.lightGreenAccent[400]
                : Colors.red,
          ),
        ),
      ),
    );
  }
}
