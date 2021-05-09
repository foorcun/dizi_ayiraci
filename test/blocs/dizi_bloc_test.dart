import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/data/dizi_service.dart';
import 'package:dizi_ayiraci/settings/servicesettings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //ARRANGE
  seciliDiziService.startFakeData();

  test('dizi bloc ...', () async {
    // TODO: Implement test
    //
    diziBloc.printAll();
    expect(diziBloc.getAll().length, 2);
  });
}
