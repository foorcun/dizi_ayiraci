// import 'package:bloc_sample/blocs/cart_bloc.dart';
// import 'package:bloc_sample/blocs/product_bloc.dart';
// import 'package:bloc_sample/models/cart.dart';
import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:flutter/material.dart';

class DizisListScreen extends StatelessWidget {
  Dizi secilenDizi; // 1. adım

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dizilerim"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.pushNamed(
                    context,
                    "/dizi",
                    arguments: secilenDizi,
                  ))
        ],
      ),
      body: buildDiziList(this.secilenDizi),
    );
  }

  buildDiziList(Dizi secilenDizi) {
    return StreamBuilder(
      initialData: diziBloc.getAll(),
      stream: diziBloc.getStream,
      builder: (context, snapshot) {
        return snapshot.data.length > 0
            ? buildDiziListItems(snapshot, secilenDizi)
            : Center(child: Text("data yok"));
      },
    );
  }

  buildDiziListItems(AsyncSnapshot snapshot, Dizi secilenDizi) {
    Dizi _secilenDizi;
    _secilenDizi = secilenDizi;
    return ListView.builder(
      itemCount: snapshot.data.length,
      //itemBuilder: null,
      itemBuilder: (BuildContext context, index) {
        final list = snapshot.data;
        return ListTile(
          title: Text(list[index].diziAdi),
          subtitle: Text(list[index].fotoLink),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/dizi",
              // arguments: secilenDizi = list[index],
              arguments: Dizi(list[index].diziAdi, list[index].fotoLink,
                  list[index].sezonlar),
            );
            print("suna tıklandı.");
            print(list[index].diziAdi);
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
}
