import 'dart:convert';

import 'package:dizi_ayiraci/data/sahtedata.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('anket ...', () async {
    // TODO: Implement test
    //
    // Dizi dizi = Dizi.withData("dizi adi", "link", 7);

    // // anket.setIsim("is");
    // expect(dizi.diziAdi, "dizi adi");

    // //
    //
  });

  test('anket Sezon', () async {
    // TODO: Implement test
    //
    // Dizi dizi = Dizi.withData("dizi adi", "link", 7);

    // // anket.setIsim("is");
    // expect(dizi.sezons[0].sezonAdi, "1. sezon");

    //
    //
  });

  test('anket ...', () async {
    // TODO: Implement test
    //
    // Dizi dizi = Dizi.withData("dizi adi", "link", 7);

    // // anket.setIsim("is");
    // expect(dizi.diziAdi, "dizi adi");

    //
    //
  });

  test('anket withMap...', () async {
    // TODO: Implement test

    List<dynamic> data = jsonDecode(sahteString);
    // List<dynamic> data = sahteSnapshot;

    List<Dizi> dizis = data.map((data) => Dizi.fromJson(data)).toList();
    //print(list);

    // print(data[0]["diziAdi"].toString());
    // print(data[0]["sezons"].toString());
    // print(data[0]["sezons"][0].toString());
    // print(data[0]["sezons"][0]["sezonAdi"].toString());
    // print(data[0]["sezons"][0]["episodes"].toString());
    // print(data[0]["sezons"][0]["episodes"]["bölümAdi"].toString());

    print(dizis[0].sezons[0].episodes[0].episodeName.toString());
    //print(list1.toString());
    // Dizi dizi = Dizi.withData(
    //             list[index].diziAdi,
    //             list[index].fotoLink,
    //             list[index].sezonSayisi,
    //             list[index].sezons,
    //             list[index].epsList));

    // anket.setIsim("is");
    //expect(dizi.diziAdi, "dizi adi");

    //
    //
  });
}
