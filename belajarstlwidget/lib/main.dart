import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  int _angka = 100;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Belajar Stateles Widget")),
        body: Column(
          children: [
            Text("Angka yang tampil adalah: "),
            Text("$_angka"),
            ElevatedButton(
                onPressed: () {
                  _angka++;
                  print(_angka);
                },
                child: Text("Naikkan Angka"))
          ],
        ),
      ),
    );
  }
}
