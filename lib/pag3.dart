import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../pag3.dart';
import '../pag2.dart';

class Page2 extends StatelessWidget {
  Page2({required this.title, required this.tutorial, required this.passos});

  int index2 = 0;
  String title = '';
  List<String> tutorial = [];
  List<String> passos = [];
  String tutorial2 = " ";
  String hamburguer = "X-Burguer";

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                  width: double.infinity,
                  child: const Text(
                    "Ingredientes:",
                    style: TextStyle(fontSize: 25),
                  ))),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
                itemCount: tutorial.length,
                itemBuilder: (context, index) {
                  return Text('${tutorial[index]}');
                }),
          ),
          SizedBox(height: 10),
          const Text("Modo de preparo:", style: TextStyle(fontSize: 25)),
          const SizedBox(height: 1),
          Expanded(
            child: ListView.builder(
                itemCount: passos.length,
                itemBuilder: (context, index) {
                  return Text('${index + 1} ${passos[index]}');
                }),
          ),
          SizedBox(
            height: 120,
          ),
        ]),
      ),
    );
  }
}
