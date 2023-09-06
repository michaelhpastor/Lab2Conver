import 'package:flutter/material.dart';

class PageStateless extends StatelessWidget {
  final String texto;
  const PageStateless(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Messenger"),
      ),
      body: Container(padding: EdgeInsets.all(20), child: Text(texto)),
    );
  }
}