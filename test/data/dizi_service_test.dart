import 'package:dizi_ayiraci/data/dizi_service.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dizi service Read...', () async {
    //ARRANGE
    var fakeService = DiziService();
    fakeService.startFakeData();

    // TODO: Implement test
    fakeService.printAll();
    expect(fakeService.getAll().length, 2);
    // expect(2, 2);
  });

  test('dizi service sezons read...', () async {
    //ARRANGE
    var fakeService = DiziService();
    fakeService.startFakeData();
    // TODO: Implement test
    fakeService.printAll();
    expect(fakeService.getAll()[0].sezons.length, 5);
    // expect(2, 2);
  });

  test('dizi service episode read...', () async {
    //ARRANGE
    var fakeService = DiziService();
    fakeService.startFakeData();
    // TODO: Implement test
    //fakeService.printAll();
    print('dizi service episode read... ' +
        fakeService.getAll()[0].sezonSayisi.toString() +
        " - " +
        fakeService.getAll()[0].sezons[0].episodes[0].episodeName);
    expect(fakeService.getAll()[0].sezons[0].episodes.length, 3);
    // expect(2, 2);
  });

  test('dizi service episode findByDiziName...', () async {
    //ARRANGE
    var fakeService = DiziService();
    fakeService.startFakeData();
    // TODO: Implement test
    //fakeService.printAll();
    Dizi dizi = fakeService.findByDiziName("Attack on Titan");
    expect(dizi.diziAdi, "Attack on Titan");
    expect(dizi.sezons[0].episodes[0].episodeName.toString(), "Attack on Titan sezon 1 bölüm 1");
    // expect(2, 2);
  });
}
