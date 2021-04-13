import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiziScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final ScreenArguments args =

    final Dizi diziArgs = ModalRoute.of(context).settings.arguments as Dizi;

    return Scaffold(
      appBar: AppBar(
        title: Text("Dizilerim"),
      ),
      body: Text(diziArgs.diziAdi),
    );
  }
}
