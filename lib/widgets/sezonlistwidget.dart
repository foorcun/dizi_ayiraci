import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:flutter/material.dart';

class SezonListWidget extends StatefulWidget {
  @override
  _SezonListWidgetState createState() => _SezonListWidgetState();
}

class _SezonListWidgetState extends State<SezonListWidget> {
  @override
  Widget build(BuildContext context) {
    List<Dizi> diziList = diziBloc.getAll();

    print("sizi list");
    // print(anketItems[0]);
    // dbService.printAll();
    diziBloc.printAll();

    return Container();
  }
}
