import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/data/dizi_service.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/settings/servicesettings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dizi bloc ...', () async {
    // TODO: Implement test
    //

    //ARRANGE
    seciliDiziService.startFakeData();
    diziBloc.printAll();
    expect(diziBloc.getAll().length, 2);
  });

  test('dizi bloc episode findByDiziName...', () async {
    //ARRANGE
    diziBloc.startFakeData();
    // TODO: Implement test
    //fakeService.printAll();
    Dizi dizi = diziBloc.findByDiziName("Attack on Titan");
    expect(dizi.diziAdi, "Attack on Titan");
    // expect(dizi.sezons[0].episodes[0].episodeName.toString(),
    //     "Attack on Titan sezon 1 bölüm 1");
    // expect(2, 2);
  });
}
