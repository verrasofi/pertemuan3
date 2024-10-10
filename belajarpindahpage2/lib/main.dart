import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      initialRoute: "/home",
      routes: {
        "/home": (context) => Home(),
        "/login": (context) => Login(),
        "/setting": (context) => Setting(),
        "/about": (context) => About()
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(children: [
          Text("Ini halaman Home"),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Text("Login")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/setting");
              },
              child: Text("Setting")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/about");
              },
              child: Text("About App"))
        ]),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(children: [
          Text("Ini halaman Login"),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text("Kembali ke Home")),
        ]),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
        ),
        body: Column(children: [
          Text("Ini halaman Setting"),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text("Kembali ke Home"))
        ]),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        body: Column(children: [
          Text("Ini halaman About"),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text("Kembali ke Home"))
        ]),
      ),
    );
  }
}
