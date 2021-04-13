// import 'package:bloc_sample/blocs/cart_bloc.dart';
// import 'package:bloc_sample/blocs/product_bloc.dart';
// import 'package:bloc_sample/models/cart.dart';
import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:flutter/material.dart';

class DizisListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dizilerim"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, "/dizi"),
          )
        ],
      ),
      body: buildDiziList(),
    );
  }

  buildDiziList() {
    return StreamBuilder(
      initialData: diziBloc.getAll(),
      stream: diziBloc.getStream,
      builder: (context, snapshot) {
        return snapshot.data.length > 0
            ? buildDiziListItems(snapshot)
            : Center(child: Text("data yok"));
      },
    );
  }

  buildDiziListItems(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      //itemBuilder: null,
      itemBuilder: (BuildContext context, index) {
        final list = snapshot.data;
        return ListTile(
          title: Text(list[index].diziAdi),
          subtitle: Text(list[index].fotoLink),
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
