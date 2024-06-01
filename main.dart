import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //kenardaki debug yazısı gitsin diye
        title: 'İlk projem',
        home:SafeArea(
          child: Scaffold(
            backgroundColor:  Color(0xFFBDF5F2),
            appBar:AppBar(
              backgroundColor:Colors.indigo ,
              title: Text("Hi Kod",style: TextStyle(color:Color(0xFFBDF5F2), fontSize: 24, fontWeight: FontWeight.bold)), //başlık
              centerTitle:true , //yazı ortada olsun mu?
              actions:  [
                IconButton(
                  onPressed: (){
                    print('İnsan ikonuna tıklandı!');
                  },
                  icon: Icon(Icons.person, color:Color(0xFFBDF5F2) ),
                )
              ], //insan ikonu
              leading: IconButton(onPressed: (){
              }, icon: Icon(Icons.menu, color: Color(0xFFBDF5F2))),
            ),
            body: Center(
              child: Container(
                height: 100,
                width: 250,
                decoration: BoxDecoration(
                    color:Colors.indigo,
                    borderRadius: BorderRadius.circular(50.0)

                ),
                child: Center(child: Text("Hello World", style: TextStyle(color: Color(0xFFBDF5F2),fontSize: 36, fontWeight: FontWeight.w800))),

              ),
            ),
          ),
        )
    ) ;
  }

}


