import 'package:dizi_ayiraci/blocs/episode_bloc.dart';
import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:dizi_ayiraci/widgets/listofeps.dart';
import 'package:flutter/material.dart';

class DropDownSezon extends StatefulWidget {
  @override
  _DropDownSezonState createState() => _DropDownSezonState();
}

class _DropDownSezonState extends State<DropDownSezon> {
  List<Sezon> _companies = Sezon.getSezons();
  List<DropdownMenuItem<Sezon>> _dropdownMenuItems;
  Sezon _selectedSezon;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedSezon = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Sezon>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Sezon>> items = List();
    for (Sezon sezon in companies) {
      items.add(
        DropdownMenuItem(
          value: sezon,
          child: Text(sezon.sezonAdi),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Sezon selectedSezon) {
    setState(() {
      _selectedSezon = selectedSezon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Select a sezon"),
            SizedBox(
              height: 20.0,
            ),
            DropdownButton(
              value: _selectedSezon,
              items: _dropdownMenuItems,
              onChanged: onChangeDropdownItem,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Selected: ${_selectedSezon.sezonAdi}'),
            //setSezon(_selectedSezon),
            // ListOfEps(_selectedSezon, setState(() => {}))
            listOfEps(_selectedSezon)

            ///
          ],
        ),
      ),
    );
  }

  // Widget setSezon(Sezon selectedSezon) {
  //   return StreamBuilder(
  //     initialData: _selectedSezon,
  //     stream: episodeBloc.getStream,
  //   );
  // }

  Widget listOfEps(Sezon selectedSezon) {
    return Text(selectedSezon.sezonAdi + " bölüm listesi gelecek");
  }
}

// class DropDownSezon extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text("selammmmmm");
//   }
// }

// class DropDown extends StatefulWidget {
//   DropDown() : super();

//   final String title = "DropDown Demo";

//   @override
//   DropDownState createState() => DropDownState();
// }

// class Sezon {
//   int id;
//   String sezonAdi;

//   Sezon(this.id, this.sezonAdi);

//   static List<Sezon> getCompanies() {
//     return <Sezon>[
//       Sezon(1, 'Apple'),
//       Sezon(2, 'Google'),
//       Sezon(3, 'Samsung'),
//       Sezon(4, 'Sony'),
//       Sezon(5, 'LG'),
//     ];
//   }
// }

// class DropDownState extends State<DropDown> {
//   //
//   List<Sezon> _companies = Sezon.getCompanies();
//   List<DropdownMenuItem<Sezon>> _dropdownMenuItems;
//   Sezon _selectedSezon;

//   @override
//   void initState() {
//     _dropdownMenuItems = buildDropdownMenuItems(_companies);
//     _selectedSezon = _dropdownMenuItems[0].value;
//     super.initState();
//   }

//   List<DropdownMenuItem<Sezon>> buildDropdownMenuItems(List companies) {
//     List<DropdownMenuItem<Sezon>> items = List();
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
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text("DropDown Sezon Example"),
//         ),
//         body: new Container(
//           child: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text("Select a sezon"),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 DropdownSezon(
//                   value: _selectedSezon,
//                   items: _dropdownMenuItems,
//                   onChanged: onChangeDropdownItem,
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Text('Selected: ${_selectedSezon.sezonAdi}'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
