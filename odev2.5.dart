class Sekiller {
  late String isim;
  late int kenarSayisi;

  Sekiller(this.isim, this.kenarSayisi);

  void bilgi() {
    print("İsim: $isim, Kenar sayisi: $kenarSayisi");
  }
}

void main() {
  Sekiller ucgen = Sekiller("ucgen", 3);
  Sekiller dikdortgen = Sekiller("dikdörtgen", 4);
  Sekiller kare = Sekiller("kare", 4);
  Sekiller besgen = Sekiller("beşgen", 5);
  Sekiller ongen = Sekiller("ongen", 10);

  ucgen.bilgi();
  dikdortgen.bilgi();
  kare.bilgi();
  besgen.bilgi();
  ongen.bilgi();
}
