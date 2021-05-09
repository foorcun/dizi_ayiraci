import 'package:dizi_ayiraci/data/dizi_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //ARRANGE
  var fakeService = DiziService();
  fakeService.startFakeData();

  test('dizi service Read...', () async {
    // TODO: Implement test
    fakeService.printAll();
    expect(fakeService.getAll().length, 2);
    // expect(2, 2);
  });

  test('dizi service sezons read...', () async {
    // TODO: Implement test
    fakeService.printAll();
    expect(fakeService.getAll()[0].sezons.length, 4);
    // expect(2, 2);
  });

  test('dizi service episode read...', () async {
    // TODO: Implement test
    //fakeService.printAll();
    print('dizi service episode read... ' +
        fakeService.getAll()[0].sezonSayisi.toString() +
        " - " +
        fakeService.getAll()[0].sezons[0].epList[0].episodeName);
    expect(fakeService.getAll()[0].sezons[0].epList.length, 10);
    // expect(2, 2);
  });
}
