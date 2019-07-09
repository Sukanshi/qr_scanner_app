import 'package:flutter/material.dart';
import 'Scan.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'QR Scanner',
    home: MyApp(),
  ),);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text('QR Scanner', style: TextStyle(
            color: Colors.black, fontSize: 25.0,
          ),),
        ),
        backgroundColor: Colors. blue,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
             Scan();
              },
        icon: Icon(Icons.camera_alt),
          label: Text('Scan'), ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
