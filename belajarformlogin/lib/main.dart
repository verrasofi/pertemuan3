import 'package:flutter/material.dart';

main() => runApp(AplikasiSaya());

class AplikasiSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Form Login")),
        body: Column(
          children: [
            Text("Form Login"),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Silahkan masukkan username",
                ),
              ),
              ),
             Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Silahkan masukkan password",
                ),
              ),
            ),
            
            
            ElevatedButton(onPressed: (){},child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
