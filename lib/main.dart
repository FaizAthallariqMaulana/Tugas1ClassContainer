import 'package:flutter/material.dart';

import 'HalamanKetiga.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Oswald'),
      home: HalamanHome(),
    );
  }
}
class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('SMK Telkom Purwokerto'),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: new Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
          child: Column(
            children: <Widget>[
              Text('Halaman Home', style: Theme.of(context).textTheme.headline5,),
              Text('Nama Lengkap : Faiz Athallariq Maulana'),
              Text('Kelas : XII RPL 2'),
              Text('No Absen : 34'),
              new Container(margin: EdgeInsets.symmetric(vertical: 12),child:
              new TextButton.icon(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama() ));},
                icon: Icon(Icons.favorite, color: Colors.pink,),
                label: Text('Halaman Pertama', style: TextStyle(color: Colors.pink),),
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
              ),
              ),
              new Container(margin: EdgeInsets.symmetric(vertical: 12),child:
              new TextButton.icon(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua() ));},
                icon: Icon(Icons.audiotrack, color: Colors.green,),
                label: Text('Halaman Kedua', style: TextStyle(color: Colors.green)),
                style: TextButton.styleFrom(backgroundColor: Colors.brown),
              ),
              ),
              new Container(margin: EdgeInsets.symmetric(vertical: 12),child:
              new TextButton.icon(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga() ));},
                icon: Icon(Icons.beach_access, color: Colors.blue,),
                label: Text('Halaman Ketiga', style: TextStyle(color: Colors.blue)),
                style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(color: Colors.blue),
        child:new Center(
          child: Text('Ini adalah Halaman Pertama', style: TextStyle(color: Colors.pink)),
        ),
      ),
    );
  }
}
class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(color: Colors.brown),
        child: new Center(
          child: Text('Ini adalah Halaman Kedua',
              style: TextStyle(color: Colors.green)),
        ),
      ),
    );
  }
}
