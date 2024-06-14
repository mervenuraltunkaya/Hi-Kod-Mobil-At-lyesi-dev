import 'package:flutter/material.dart';
import 'sonuc.dart'; // SonucSayfasi'nın bulunduğu dosyanın yolunu belirleyin

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kişilik Anketi",
      home: const AnketSayfasi(),
    );
  }
}

class AnketSayfasi extends StatefulWidget {
  const AnketSayfasi({super.key});

  @override
  State<AnketSayfasi> createState() => _AnketSayfasiState();
}

class _AnketSayfasiState extends State<AnketSayfasi> {
  final _formkey = GlobalKey<FormState>();
  bool? isChecked = false;
  bool isSwitched = false;
  String? cinsiyet;
  double sliderValue = 0.0;
  var name = "";
  String metin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF400101),
        title: const Text(
          "Kişilik Anketi",
          style: TextStyle(
            fontSize: 32,
            color: Color(0xFFD9C3B0),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              onChanged: (_text1) {
                setState(() {
                  name = _text1;
                });
              },
              decoration: const InputDecoration(
                labelText: "Ad Soyad:",
                hintText: "Ad Soyad giriniz.",
                suffixIcon: Icon(Icons.account_box_outlined),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF730217)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CheckboxListTile(
              title: const Text("18 yaşından büyük müsünüz?"),
              tileColor: const Color(0xFFD9C3B0),
              value: isChecked,
              onChanged: (_resitMi) {
                setState(() {
                  isChecked = _resitMi;
                });
              },
              checkColor: const Color(0xFFD9C3B0), // İşaretlendiğinde kutucuğun iç rengi
              activeColor: const Color(0xFF730217), // İşaretlenmediğinde kutucuğun dış rengi
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0), // Padding ekleyin
            child: SizedBox(
              width: 200, // Genişliği ayarlayın
              child: DropdownButton<String>(
                items: const [
                  DropdownMenuItem(
                    value: 'Kadın',
                    child: Text("Kadın"),
                  ),
                  DropdownMenuItem(
                    value: 'Erkek',
                    child: Text("Erkek"),
                  ),
                  DropdownMenuItem(
                    value: 'Diğer',
                    child: Text("Diğer"),
                  ),
                ],
                value: cinsiyet,
                hint: const Text("Cinsiyetinizi Seçiniz"),
                onChanged: (String? secim) {
                  setState(() {
                    cinsiyet = secim;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0), // Padding değerini ayarlayın
            child: SwitchListTile(
              title: const Text("Sigara içiyor musunuz?"),
              tileColor: const Color(0xFFD9C3B0),
              value: isSwitched,
              onChanged: (_sigaraMi) {
                setState(() {
                  isSwitched = _sigaraMi;
                });
              },
              activeColor: const Color(0xFF730217), // Switch çubuğunun etkin (açık) durumda olduğunda rengi
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10.0, 40.0, 0.0),
            child: Visibility(
              visible: isSwitched,
              child: Slider(
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
                min: 0,
                max: 20,
                label: sliderValue.round().toString(),
                activeColor: const Color(0xFF730217),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sonuc(
                    name: name,
                    isChecked: isChecked ?? false,
                    cinsiyet: cinsiyet,
                    isSwitched: isSwitched,
                    sliderValue: sliderValue,
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF730217),
              foregroundColor: Colors.white,
            ),
            child: const Text('Anketi Gönder'),
          ),
        ],
      ),
    );
  }
}
