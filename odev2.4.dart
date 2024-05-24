List<String> dizidenElemanSil(List<String> liste, String eleman) {
  liste.remove(eleman);
  return liste;
}

void main() {
  List<String> liste1 = ["İstanbul", "Trabzon", "Ankara", "Muğla"];
  print(dizidenElemanSil(liste1, liste1[2]));
}
