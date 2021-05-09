// import 'package:dizi_ayiraci/blocs/episode_bloc.dart';
// import 'package:dizi_ayiraci/blocs/sezon_bloc.dart';
// import 'package:dizi_ayiraci/models/sezon.dart';
// import 'package:flutter/material.dart';

// class DropDownSezon extends StatefulWidget {
//   final customFunction;
//   DropDownSezon({Key key, this.customFunction}) : super(key: key);

//   @override
//   _DropDownSezonState createState() => _DropDownSezonState();
// }

// class _DropDownSezonState extends State<DropDownSezon> {
//   List<Sezon> _companies = sezonBloc.getAll();
//   List<DropdownMenuItem<Sezon>> _dropdownMenuItems;
//   Sezon _selectedSezon;

//   @override
//   void initState() {
//     _dropdownMenuItems = buildDropdownMenuItems(_companies);
//     _selectedSezon = _dropdownMenuItems[0].value;
//     widget.customFunction(_selectedSezon);
//     super.initState();
//   }

//   List<DropdownMenuItem<Sezon>> buildDropdownMenuItems(List companies) {
//     List<DropdownMenuItem<Sezon>> items = [];
//     for (Sezon sezon in companies) {
//       items.add(
//         DropdownMenuItem(
//           value: sezon,
//           child: Text(sezon.sezonAdi),
//         ),
//       );
//     }
//     return items;
//   }

//   onChangeDropdownItem(Sezon selectedSezon) {
//     setState(() {
//       _selectedSezon = selectedSezon;
//       widget.customFunction(_selectedSezon);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       child: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // SizedBox(
//             //   height: 20.0,
//             // ),
//             Expanded(
//               child: Container(
//                 child: DropdownButton(
//                   value: _selectedSezon,
//                   items: _dropdownMenuItems,
//                   onChanged: onChangeDropdownItem,
//                 ),
//               ),
//             ),
//             // SizedBox(
//             //   height: 20.0,
//             // ),
//             Expanded(
//                 flex: 1, child: Text('Selected: ${_selectedSezon.sezonAdi}')),
//             // Expanded(
//             //   flex: 1,
//             //   child: listOfEps(_selectedSezon),
//             // ),
//             // SingleChildScrollView(
//             //     child: Column(
//             //   children: [
//             //     ListView.builder(
//             //         itemCount: 2,
//             //         shrinkWrap: true,
//             //         itemBuilder: (BuildContext context, index) {
//             //           return Text("hadi bakamm");
//             //         }),
//             //   ],
//             // ))

//             //
//             // ListView(
//             //   children: [Text("hahaha")],
//             // ),

//             // Text("asldkfjasşdlkf"),
//             // Text("asldkfjasşdlkf"),
//             // Text("asldkfjasşdlkf"),
//             // Text("asldkfjasşdlkf"),

//             ///
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget listOfEps(Sezon selectedSezon) {
//   //   Sezon _selectedSezon;
//   //   listOfEps(this._selectedSezon);
//   //   return Column(
//   //     children: [
//   //       Text(_selectedSezon.sezonAdi + " bölüm listesi gelecek"),
//   //       // ListView(
//   //       //   children: [
//   //       //     Text("engin"),
//   //       //     Text("aa"),
//   //       //     Text("fff"),
//   //       //   ],
//   //       // ),
//   //       ListView.builder(
//   //         itemCount: 2,
//   //         // itemCount: selectedSezon.epList.length,
//   //         // shrinkWrap: true,
//   //         // physics: ClampingScrollPhysics(),
//   //         itemBuilder: (BuildContext context, index) {
//   //           // final list = selectedSezon.epList;
//   //           return ListTile(
//   //             // title: Text(list[index].episodeName),
//   //             title: Text("selammmmmmmm"),
//   //           );
//   //           // return Text("selammmmmmmm");
//   //         },
//   //       )
//   //     ],
//   //   );
//   // }
// }
