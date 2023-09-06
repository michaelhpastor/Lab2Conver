import 'package:activities_e_intents/pages/pageStateles.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    TextEditingController _texto = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Messenger'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(20, 10, 150, 10),
              child: TextField(
                controller: _texto,
              )),
          Container(
              padding: EdgeInsets.fromLTRB(20, 10, 150, 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageStateless(_texto.text)));
                },
                child: Text("Enviar a Stateless"),
              ))
        ],
      ),
    );
  }
}
