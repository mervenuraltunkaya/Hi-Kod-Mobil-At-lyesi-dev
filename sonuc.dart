import 'package:flutter/material.dart';

class Sonuc extends StatelessWidget {

  final String name;
  final bool isChecked;
  final String? cinsiyet;
  final bool isSwitched;
  final double sliderValue;

  const Sonuc({
    Key? key,
    required this.name,
    required this.isChecked,
    required this.cinsiyet,
    required this.isSwitched,
    required this.sliderValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF400101),
        title: Text(
          "Kişilik Anketi",
          style: TextStyle(
            fontSize: 32,
            color: Color(0xFFD9C3B0),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Ad Soyad: $name"),
                Text("Reşit Mi? ${isChecked ? 'Evet' : 'Hayır'}"),
                Text("Cinsiyet: $cinsiyet"),
                Text("Sigara İçiyor Mu? ${isSwitched ? 'Evet' : 'Hayır'}"),
                if (isSwitched) Text("Günde kaç sigara içiyor? $sliderValue"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
