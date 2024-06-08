import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formkey = GlobalKey<FormState>();
  bool? isChecked = false;
  bool isSwitched = false;
  String? cinsiyet;
  double sliderValue=0.0;
  var name="";
  String metin="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kişilik Anketi",
      home: SafeArea(
        child: Scaffold(

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
                  decoration: InputDecoration(
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
                  title: Text("18 yaşından büyük müsünüz?"),
                  tileColor: Color(0xFFD9C3B0),
                  value: isChecked,
                  onChanged: (_resitMi) {
                    setState(() {
                      isChecked = _resitMi;
                    });
                  },
                  checkColor: Color(0xFFD9C3B0), // İşaretlendiğinde kutucuğun iç rengi
                  activeColor: Color(0xFF730217), // İşaretlenmediğinde kutucuğun dış rengi
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 200, 
                  child: DropdownButton<String>(
                    items: const [
                      DropdownMenuItem(
                        child: Text("Kadın"),
                        value: 'Kadın',
                      ),
                      DropdownMenuItem(
                        child: Text("Erkek"),
                        value: 'Erkek',
                      ),
                      DropdownMenuItem(
                        child: Text("Diğer"),
                        value: 'Diğer',
                      ),
                    ],
                    value: cinsiyet,
                    hint: Text("Cinsiyetinizi Seçiniz"),
                    onChanged: (String? secim) {
                      setState(() {
                        cinsiyet = secim;
                      });
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SwitchListTile(
                  title: Text("Sigara içiyor musunuz?"),
                  tileColor: Color(0xFFD9C3B0),
                  value: isSwitched,
                  onChanged: (_sigaraMi) {
                    setState(() {
                      isSwitched = _sigaraMi;
                    });
                    },
                  activeColor: Color(0xFF730217),// Switch çubuğu açıldığında rengi

                ),
              ),

              Padding(padding: const EdgeInsets.fromLTRB(30.0, 10.0, 40.0, 0.0),
              child:Visibility(
                visible: isSwitched,
                child: Slider(value: sliderValue,
                  onChanged: (double value) { setState(() {
                    sliderValue=value;
                  }); },
                  min:0,
                  max:20,
                  label: sliderValue.round().toString(),
                  activeColor:Color(0xFF730217) ,
                ),
              ),),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    metin="Ad Soyad: $name\n "
                        "Reşit Mi? $isChecked\n"
                        "Cinsiyet: $cinsiyet\n"
                        "Sigara İçiyor Mu? $isSwitched\n"
                        "Günde kaç sigara içiyor? $sliderValue"
                        ;
                  });
                },
                child: Text('Anketi Gönder'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF730217),
                  foregroundColor: Colors.white,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  metin,
                  style: TextStyle(fontSize: 18, color: Colors.black ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
