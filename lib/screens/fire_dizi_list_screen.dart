// import 'package:bloc_sample/blocs/cart_bloc.dart';
// import 'package:bloc_sample/blocs/product_bloc.dart';
// import 'package:bloc_sample/models/cart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/blocs/in_memory_blocs/tiklanan_dizi_bloc.dart';
import 'package:dizi_ayiraci/data/fire_service.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:flutter/material.dart';

class FireDizisListScreen extends StatelessWidget {
  // late Dizi secilenDizi; // 1. adım

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dizilerim"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
              // onPressed: () => Navigator.pushNamed(
              //       context,
              //       "/dizi",
              //       // arguments: tiklananDiziBloc.getTiklananDizi().diziTiklanan,
              //     ))
            )
          ],
        ),
        // body: buildDiziList(),
        // body: StreamBuilder<DocumentSnapshot>(
        //   stream: diziDocumentRef.snapshots(),
        //   builder: (context, AsyncSnapshot asyncSnapshot) {
        //     // return Text('${asyncSnapshot.data.data()}');
        //     return Text(asyncSnapshot.data.data()["diziAdi"]);
        //   },
        // ),

        body: StreamBuilder<QuerySnapshot>(
          stream: rootCollectionRef.snapshots(),
          builder: (context, AsyncSnapshot asyncSnapshot) {
            // return Text('${asyncSnapshot.data.data()}');

            List<DocumentSnapshot> listOfDocumentSnap = asyncSnapshot.data.docs;
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
                children: childrenOfFire(context, listOfDocumentSnap),
              ),
            );
          },
        ),
      ),
    );
  }

  buildDiziList() {
    return StreamBuilder(
      initialData: diziBloc.getAll(),
      stream: diziBloc.getStream,
      builder: (context, snapshot) {
        return buildDiziListItems(snapshot);
        // ? buildDiziListItems(snapshot, secilenDizi)
        // : Center(child: Text("data yok"));;
      },
    );
  }

  buildDiziListItems(AsyncSnapshot snapshot) {
    // Dizi _secilenDizi;
    // _secilenDizi = secilenDizi;
    return ListView.builder(
      itemCount: snapshot.data.length,
      //itemBuilder: null,
      itemBuilder: (BuildContext context, index) {
        final list = snapshot.data;
        print(list[0].sezonSayisi); ////////////
        // print(
        //     "list[index].epsList " + list[0].sezons[0].epsList[0].episodeName);

        print("buildDiziListItems " + list.toString());
        return ListTile(
          title: Text(list[index].diziAdi),
          subtitle: Text(list[index].fotoLink),
          onTap: () {
            // tiklananDiziBloc.setTiklananDizi(list[index].diziAdi);
            // Navigator.pushNamed(
            //   context,
            //   "/diziFire",
            //   // // arguments: secilenDizi = list[index],
            //   // arguments: Dizi.withData(
            //   //     list[index].diziAdi,
            //   //     list[index].fotoLink,
            //   //     list[index].sezonSayisi,
            //   //     list[index].sezons,
            //   //     list[index].epsList),

            //   // arguments: Dizi.withMap(list[index]),
            // );
            print("suna tıklandı.");
            print(list[index].diziAdi);
            print("tiklananDiziBloc.setTiklananDizi( de diziAdi " +
                tiklananDiziBloc.getTiklananDizi().diziTiklanan!.diziAdi);
          },
          trailing: IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              //cartBloc.addToCart(Cart(list[index], 1));
            },
          ),
        );
      },
    );
  }

  List<Widget> childrenOfFire(
      BuildContext context, List<DocumentSnapshot> listOfDocumentSnap) {
    List<Widget> listW = [];

    listOfDocumentSnap.forEach((element) {
      // listW.add(Text('${element.data()!["diziAdi"]}'));
      listW.add(DiziListTile(context, element.data()!["diziAdi"]));
    });

    // Text('${listOfDocumentSnap[index].data()!["diziAdi"]}')) return
    // Text('${listOfDocumentSnap[0].data()!["diziAdi"]}');

    // listW.add(Text("asdf"));
    // listW.add(Text("asdf"));
    // listW.add(Text("asdf"));
    // listW.add(Text("asdf"));

    return listW;
  }
}

Widget DiziListTile(BuildContext context, String diziAdi) {
  //bu widget donduren bir fonksiyon, statefull ya da less değil
  return InkWell(
    onTap: () {
      //tiklananDiziBloc.getTiklananDizi().diziTiklanan!.diziAdi);
      tiklananDiziBloc.setTiklananDiziString(diziAdi);
      Navigator.pushNamed(
        context,
        "/diziFire",
        //   // // arguments: secilenDizi = list[index],
        //   // arguments: Dizi.withData(
        //   //     list[index].diziAdi,
        //   //     list[index].fotoLink,
        //   //     list[index].sezonSayisi,
        //   //     list[index].sezons,
        //   //     list[index].epsList),

        //   // arguments: Dizi.withMap(list[index]),
      );
      print("suna tıklandı. DiziListTile");
      print(diziAdi);
    },
    child: Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(diziAdi),
        ),
      ],
    )),
  );
}
