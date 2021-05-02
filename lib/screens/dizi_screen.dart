import 'package:dizi_ayiraci/blocs/episode_bloc.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:dizi_ayiraci/widgets/dropdownSezon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiziScreen extends StatefulWidget {
  @override
  _DiziScreenState createState() => _DiziScreenState();
}

class _DiziScreenState extends State<DiziScreen> {
  // Sezon parentSezon = Sezon('benden. sezon', episodeBloc.getAll());
  Sezon parentSezon;

  void parentChange(Sezon newString) {
    setState(() {
      // print("baslangıc " + parentSezon.epList.length.toString());

      parentSezon = newString;
      print("parentChange " + parentSezon.epList.length.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    //final ScreenArguments args =

    final Dizi diziArgs = ModalRoute.of(context).settings.arguments as Dizi;

    // @override
    // void initState() {
    //   super.initState();
    //   _sezonController.addListener();
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text(diziArgs.diziAdi),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text("sushi"),
                SizedBox(
                  width: 100,
                ),
                Text("asdf"),
                SizedBox(
                  width: 100,
                ),
                Text("fdsa"),
                SizedBox(
                  width: 100,
                ),
                Text("wer"),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Text("sushi"),
                SizedBox(
                  height: 100,
                ),
                Text("asdf"),
                SizedBox(
                  height: 100,
                ),
                Text("fdsa"),
                SizedBox(
                  height: 100,
                ),
                Text("wer"),
                SizedBox(
                  height: 100,
                ),
                Text("wer"),
                SizedBox(
                  height: 100,
                ),
                Text("wer"),
                SizedBox(
                  height: 100,
                ),
                Text("wer"),
              ],
            ),
          ),
        ],
      ),
    );

    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text(diziArgs.diziAdi),
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
    //           itemCount: parentSezon == null ? 1 : parentSezon.epList.length,
    //           itemBuilder: (BuildContext context, index) {
    //             final list = parentSezon.epList;
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
