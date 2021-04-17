import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:flutter/material.dart';

class ListOfEps extends StatefulWidget {
  Sezon sezon;

  ListOfEps(this.sezon);

  @override
  _ListOfEpsState createState() => _ListOfEpsState(sezon);
}

class _ListOfEpsState extends State<ListOfEps> {
  Sezon sezon;
  _ListOfEpsState(this.sezon);

  @override
  Widget build(BuildContext context) {
    return Text(sezon.sezonAdi + " bölüm listesi gelecek");
  }

  onChangeDropdownItem(Sezon selectedSezon) {
    setState(() {
      this.sezon = selectedSezon;
    });
  }
}
