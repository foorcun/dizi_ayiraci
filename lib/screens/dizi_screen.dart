import 'package:dizi_ayiraci/models/company.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/widgets/dropdownbutton.dart';
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
      body: Column(
        children: [
          Text(diziArgs.diziAdi),
          DropDownButton(),
        ],
      ),
    );
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
