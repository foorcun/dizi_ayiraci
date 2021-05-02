import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('anket ...', () async {
    // TODO: Implement test
    //
    Dizi dizi = Dizi.withData("dizi adi", "link",7);

    // anket.setIsim("is");
    expect(dizi.diziAdi, "dizi adi");

    //
    //
  });
}
