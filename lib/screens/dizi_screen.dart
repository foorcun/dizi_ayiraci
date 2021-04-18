import 'package:dizi_ayiraci/blocs/episode_bloc.dart';
import 'package:dizi_ayiraci/models/company.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/models/sezon.dart';
import 'package:dizi_ayiraci/widgets/dropdownSezon.dart';
import 'package:dizi_ayiraci/widgets/dropdownbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiziScreen extends StatefulWidget {
  @override
  _DiziScreenState createState() => _DiziScreenState();
}

class _DiziScreenState extends State<DiziScreen> {
  Sezon parentSezon = Sezon('benden. sezon', episodeBloc.getAll());

  void parentChange(Sezon newString) {
    setState(() {
      parentSezon = newString;
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
          title: Text("Dizilerim"),
        ),
        body: Column(
          children: [
            Expanded(flex: 1, child: Text(diziArgs.diziAdi)),
            Expanded(
              flex: 1,
              child: ListView(children: [
                Text(parentSezon.sezonAdi == null
                    ? "bu boş bea"
                    : parentSezon.sezonAdi),
                Text(parentSezon.sezonAdi == null
                    ? "bu boş bea"
                    : parentSezon.sezonAdi),
                Text(parentSezon.sezonAdi == null
                    ? "bu boş bea"
                    : parentSezon.sezonAdi),
                Text(parentSezon.sezonAdi == null
                    ? "bu boş bea"
                    : parentSezon.sezonAdi),
                Text(parentSezon.sezonAdi == null
                    ? "bu boş bea"
                    : parentSezon.sezonAdi),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
              ]),

              //Column(
              // children: <Widget>[
              // Text(diziArgs.diziAdi),
              // SingleChildScrollView(
              //     child: Column(
              //   children: [
              //     ListView.builder(
              //         itemCount: 55,
              //         shrinkWrap: true,
              //         itemBuilder: (BuildContext context, index) {
              //           return Text("hadi bakamm");
              //         }),
              //   ],
              // )),
              // DropDownButton(),
              // DropDownSezon(),

              // ],
              // ),
            ),
            Expanded(
              flex: 2,
              child: DropDownSezon(
                customFunction: parentChange,
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView(children: [
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
                Text("selmammm"),
              ]),
            ),

            Expanded(flex: 1, child: listOfEps()),

            // Expanded(
            //   flex: 1,
            //   child: DropDownButton(),
            // ),
          ],
        ));
  }

  listOfEps() {
    return Column(children: [
      Text(" bölüm listesi gelecek"),
      ListView.builder(
        itemCount: 2,
        // itemCount: selectedSezon.epList.length,
        // shrinkWrap: true,
        // physics: ClampingScrollPhysics(),
        itemBuilder: (BuildContext context, index) {
          // final list = selectedSezon.epList;
          return ListTile(
            // title: Text(list[index].episodeName),
            title: Text("selammmmmmmm"),
          );
          // return Text("selammmmmmmm");
        },
      )
    ]);
  }
}

// class _Dropdown {}

// class _DropDown extends StatefulWidget {
//   _DropDown() : super();

//   final String title = "DropDown Demo";
//   // const _DropDown(){};

//   @override
//   DropDownState createState() => DropDownState();
// }

// class DropDownState extends State<_DropDown> {
//   //
//   List<Company> _companies = Company.getCompanies();
//   List<DropdownMenuItem<Company>> _dropdownMenuItems;
//   Company _selectedCompany;

//   @override
//   void initState() {
//     _dropdownMenuItems = buildDropdownMenuItems(_companies);
//     _selectedCompany = _dropdownMenuItems[0].value;
//     super.initState();
//   }

//   List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
//     List<DropdownMenuItem<Company>> items = List();
//     for (Company company in companies) {
//       items.add(
//         DropdownMenuItem(
//           value: company,
//           child: Text(company.name),
//         ),
//       );
//     }
//     return items;
//   }

//   onChangeDropdownItem(Company selectedCompany) {
//     setState(() {
//       _selectedCompany = selectedCompany;
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
//             Text("Select a company"),
//             SizedBox(
//               height: 20.0,
//             ),
//             DropdownButton(
//               value: _selectedCompany,
//               items: _dropdownMenuItems,
//               onChanged: onChangeDropdownItem,
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Text('Selected: ${_selectedCompany.name}'),
//           ],
//         ),
//       ),
//     );
//   }
// }
