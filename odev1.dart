void main() {
  //a şıkkı
  int oyuncunumarasi = 5;
  String cicekTuru = "Nergis";
  double skor = 78.2;
  bool uyandimi = false;
  dynamic dinamikDegisken = "Bu bir değişkendir.";
  print("Integer değer: $oyuncunumarasi");
  print("String değer: $cicekTuru");
  print("Double değer: $skor");
  print("Boolean değer: $uyandimi");
  print("Dinamik değer: $dinamikDegisken \n");
  //dart dilinde char veri tipi kullanılmaz. Kullanılsaydı şu şekilde tanımlanırdı --> char karakter='m';

  //b şıkkı
  //camelcase tanımlama
  bool uyandiMi = true;
  print("Bool değişeken(camelCase) $uyandiMi");

  //snack_case tanımlama
  dynamic dinamik_degisken = "Bu bir değişkendir.";
  print("Dinamik değer(snack_case): $dinamik_degisken");

  //PascalCase tanımlama
  int OyuncuNumarasi = 4;
  print("Integer değer(PascalCase): $OyuncuNumarasi \n");

  //c şıkkı
  String ad = "Mervenur";
  String soyAd = "Altunkaya";
  int yas = 20;
  bool resitMi = true;
  print("Ben $ad $soyAd , yaşım $yas benim reşitlik durumum: $resitMi");
}
