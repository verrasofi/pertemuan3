import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyWidget(title: 'Belajar Stateful Widget'),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required String title});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _angka = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Stateful Widget"),
      ),
      body: Column(
        children: [
          Text("Angka yang anda klik sudah sampai : "),
          Text("$_angka"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _angka++;
                });
              },
              child: Text("Klik untuk tambahkan angka"))
        ],
      ),
    );
  }
}
