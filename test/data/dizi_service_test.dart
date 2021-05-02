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
}
