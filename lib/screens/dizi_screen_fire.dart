import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dizi_ayiraci/blocs/episode_bloc.dart';
import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/data/fire_service.dart';
import 'package:dizi_ayiraci/data/in_memory_data/tiklanan_dizi_service.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/in_memory_models/tiklanan_dizi.dart';
import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:dizi_ayiraci/widgets/dropdownSezon.dart';
import 'package:dizi_ayiraci/widgets/episodelistwidget.dart';
import 'package:dizi_ayiraci/widgets/sezon_row_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiziScreenFire extends StatefulWidget {
  @override
  _DiziScreenFireState createState() => _DiziScreenFireState();
}

class _DiziScreenFireState extends State<DiziScreenFire> {
  String diziDocLoading = "Dizi doc loading...";
  List<Widget> rowList = [];

  void _incrementCounter() async {
    // This call to setState tells the Flutter framework that something has
    // changed in this State, which causes it to rerun the build method below
    // so that the display can reflect the updated values. If we changed
    // _counter without calling setState(), then the build method would not be
    // called again, and so nothing would appear to happen.
    print("floatingActionButton printi");
    print("tiklananDiziBloc.tiklananDiziString! " +
        tiklananDiziBloc.tiklananDiziString!);
    var response =
        await rootCollectionRef.where("diziAdi", isEqualTo: "Dark").get();
    print("response.docs.first.id)" +
        response.docs.first
            .id); // burda da diziAdi=Dark olan documantSnapshot (yani parentı aslında )
    print("response.docs.length.toString()" +
        response.docs.length.toString()); // length 1 adet
  }

// void setDoc

  void setDoc(String diziDoc) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      diziDocLoading = diziDoc;
    });
  }

  void setSezon(List<Widget> rowList) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      this.rowList = rowList;
    });
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   rowList.add(Text("row yükleniyor.. "));

  //   getTheDocIDOfDizi().then((value) => setDoc(value));

  //   sezonRow().then((value) => setSezon(value));
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    rowList.add(Text("row yükleniyor.. "));

    getTheDocIDOfDizi().then((value) {
      setDoc(value);
      sezonRow().then((value) => setSezon(value));
    });
    // sezonRow().then((value) => setSezon(value));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(tiklananDiziBloc.tiklananDiziString!),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Text(diziDocLoading),
            // getTheDocIDOfDizi().then((value) => return Text(value))),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: rowList,
                // children: sezonRow(),
                //  [
                //   Text("SingleChildScrollView"),
                //   Text("SingleChildScrollView "),
                //   Text("SingleChildScrollView "),
                //   Text("SingleChildScrollView "),
                //   Text("SingleChildScrollView "),
                //   Text("SingleChildScrollView "),
                //   Text("SingleChildScrollView "),
                //   Text("SingleChildScrollView "),
                // ],
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: rootCollectionRef.snapshots(),
              builder: (context, AsyncSnapshot asyncSnapshot) {
                // return Text('${asyncSnapshot.data.data()}');

                List<DocumentSnapshot> listOfDocumentSnap =
                    asyncSnapshot.data.docs;
                // Text('${listOfDocumentSnap[index].data()!["diziAdi"]}')) return Text('${listOfDocumentSnap[0].data()!["diziAdi"]}');
                // return Flexible(
                //   child: ListView.builder(
                //       itemCount: listOfDocumentSnap.length,
                //       itemBuilder: (context, index) =>
                //           Text('${listOfDocumentSnap[index].data()!["diziAdi"]}')),
                // );
                return SingleChildScrollView(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: printDocids(listOfDocumentSnap),

                    // [
                    //   Text(listOfDocumentSnap.first.id),
                    //   Text(listOfDocumentSnap[1].id),
                    //   // listOfDocumentSnap.forEach((element) {return Text(element.id),});
                    //                       ],
                  ),
                );
              },
            ),
          ],
        )),
        // body: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(children: [
        //     //Text("DiziScreenFire"),
        //     // TiklananDiziService.tiklananDizi.diziTiklanan!.diziAdi == null
        //     //     ? Text("null")
        //     //     : Text(TiklananDiziService.tiklananDizi.diziTiklanan!.diziAdi),
        //     Text(tiklananDiziBloc.tiklananDiziString!),
        //     Text(tiklananDiziBloc.tiklananDiziString!),
        //     Text(tiklananDiziBloc.tiklananDiziString!),
        //     Text(tiklananDiziBloc.tiklananDiziString!),
        //     Text(tiklananDiziBloc.tiklananDiziString!),
        //     Text(tiklananDiziBloc.tiklananDiziString!),
        //     Text(tiklananDiziBloc.tiklananDiziString!),
        //   ]),
        // ),
      ),
    );
  }

  List<Widget> printDocids(List<DocumentSnapshot> listOfDocumentSnap) {
    List<Text> listText = [];

    listOfDocumentSnap.forEach((element) {
      listText.add(Text(element.id));
    });
    return listText;
  }

  Future<String> getTheDocIDOfDizi() async {
    var response = await rootCollectionRef
        .where("diziAdi", isEqualTo: tiklananDiziBloc.tiklananDiziString!)
        .get();
    print("response.docs.first.id)" +
        response.docs.first
            .id); // burda da diziAdi=Dark olan documantSnapshot (yani parentı aslında )
    print("response.docs.length.toString()" +
        response.docs.length.toString()); // length 1 adet
    diziDocLoading = response.docs.first.id;
    //setDoc(response.docs.first.id);
    return response.docs.first.id;
  }

  Future<List<Widget>> sezonRow() async {
    List<Widget> rowList = [];

    var sezonsCollectionrefi = firestoreManager.collection(
        'dizi-ayraci/$diziDocLoading/sezons'); //.doc(diziDocLoading);
    var response = await sezonsCollectionrefi.get();
    response.docs.forEach((element) {
      rowList.add(Text(element.data()["sezonAdi"]));
      print('element.data()["sezonAdi"]' + element.data()["sezonAdi"]);
      // rowList.add(SizedBox(
      //   width: 10.0,
      // ));
    });
    // response.data().co
    return rowList;
  }
}
// class DiziScreenFire extends StatefulWidget {
//   @override
//   _DiziScreenFireState createState() => _DiziScreenFireState();
// }

// class _DiziScreenFireState extends State<DiziScreenFire> {
//   // int _counter = 0;
//   // void _incrementCounter() {
//   //   setState(() {
//   //     // This call to setState tells the Flutter framework that something has
//   //     // changed in this State, which causes it to rerun the build method below
//   //     // so that the display can reflect the updated values. If we changed
//   //     // _counter without calling setState(), then the build method would not be
//   //     // called again, and so nothing would appear to happen.
//   //     _counter++;
//   //   });
//   // }

//   // Sezon parentSezon = Sezon('benden. sezon', episodeBloc.getAll());
//   late Sezon parentSezon;

//   void parentChange(Sezon newString) {
//     setState(() {
//       // print("baslangıc " + parentSezon.episodes.length.toString());

//       parentSezon = newString;
//       print("parentChange " + parentSezon.episodes!.length.toString());

//       print("bu nul mu");
//     });
//   }

//   void sezonTikla(Sezon sez) {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       tiklananDiziBloc.getTiklananDizi().sezonTiklanan = sez;
//     });
//   }

//   @override
//   void initState() {
//     //Sezon sezonTiklanan = diziTiklanan.diziTiklanan.sezons[0];
//     tiklananDiziBloc.getTiklananDizi().sezonTiklanan =
//         tiklananDiziBloc.getTiklananDizi().diziTiklanan!.sezons![0];
//   }

//   @override
//   Widget build(BuildContext context) {
//     //final ScreenArguments args =
//     TiklananDizi diziTiklanan = tiklananDiziBloc.getTiklananDizi();

//     // final Dizi diziTiklanan =
//     //     ModalRoute.of(context).settings.arguments as Dizi; // tıklanan dizi
//     // Sezon sezonTiklanan;

//     //Sezon sezonTiklanan = diziTiklanan.diziTiklanan.sezons[0];
// //tiklananDiziBloc.getTiklananDizi().sezonTiklanan
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(diziTiklanan.diziTiklanan!.diziAdi),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: Icon(Icons.add),
//       // ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.all(25.0),
//               padding: EdgeInsets.all(25.0),
//               child: Column(
//                 children: [
//                   // Text(tiklananDiziBloc
//                   //     .getTiklananDizi()
//                   //     .sezonTiklanan
//                   //     .sezonAdi),
//                   Text("conteinerim"),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Column(
//                       children: [
//                         Text("sezonlar gelcek buraya")
//                         // Text('$_counter'),
//                         // Text(diziTiklanan
//                         //     .diziTiklanan.sezons[_counter].sezonAdi),
//                         // SezonRow(sezonTikla),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
//               width: 250,
//               height: 250,
//               child: SingleChildScrollView(
//                   // child: EpisodeListWidget(), // column() içinde
//                   ),
//             ),
//             // Text("1. Sezon"),

//             //child: Text("diziTiklanan"),
//             // Row(
//             //   children: [
//             //     Text("sushi"),
//             //     SizedBox(
//             //       width: 100,
//             //     ),
//             //     Text("asdf"),
//             //     SizedBox(
//             //       width: 100,
//             //     ),
//             //     Text("fdsa"),
//             //     SizedBox(
//             //       width: 100,
//             //     ),
//             //     Text("wer"),
//             //   ],
//             // ),
//             // EpisodeListWidget(diziTiklanan), //// bunu episode list widget yapcaz
//           ],
//         ),
//       ),
//     );

//     // return Scaffold(
//     //     appBar: AppBar(
//     //       title: Text(diziTiklanan.diziAdi),
//     //     ),
//     //     body: Column(
//     //       children: [
//     //         // Expanded(
//     //         //   flex: 1,
//     //         //   child: DropDownSezon(
//     //         //     customFunction: parentChange,
//     //         //   ),
//     //         // ),
//     //         // Expanded(
//     //         // flex: 4,
//     //         // child:
//     //         ListView.builder(
//     //           // itemCount: 20,
//     //           itemCount: parentSezon == null ? 1 : parentSezon.episodes.length,
//     //           itemBuilder: (BuildContext context, index) {
//     //             final list = parentSezon.episodes;
//     //             return ListTile(
//     //               title: Text(parentSezon.sezonAdi == null
//     //                   ? "bu listView boş"
//     //                   : parentSezon.sezonAdi + " - " + list[index].episodeName),
//     //               // title: Text("list of eps"),
//     //             );
//     //             // return Text("selammmmmmmm");
//     //           },

//     //           //]
//     //         ),
//     //         //),
//     //       ],
//     //     ));
//     //
//   }
// }
