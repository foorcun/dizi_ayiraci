class Sezon {
  String sezonAdi;

  Sezon(this.sezonAdi);

  static List<Sezon> getSezons() {
    return <Sezon>[
      Sezon('1. sezon'),
      Sezon('2. sezon'),
      Sezon('3. sezon'),
      Sezon('4. sezon'),
      Sezon('5. sezon'),
    ];
  }
}
