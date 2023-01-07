import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../pag3.dart';
import '../projeto.dart';

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page1(
            title: '',
          ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      });
}

class Page1 extends StatelessWidget {
  Page1({
    super.key,
    required String title,
  });

  List<String> ingredientes = [
    'Feijão preto, carne seca, bacon, linguiça calabresa, toucinho defumado, cebolas, dentes de alho...',
    'Manteiga, filé de frango,molho de tomate, ketchup, creme de leite...',
    'Carne de hamburguer, bacon, ovo, sal, cebola, tomate...',
    'Farinha de trigo, Fermento Biológico, sal, ',
    '5',
  ];

  List<String> pratos = [
    'Feijoada',
    'Strogonoff',
    'Hamburguer',
    'Pizza de Frango',
    'Lasanha',
  ];
  List<String> passos = [
    'Frite os hambúrgueres, quando estiver frito cubra com a mussarela.',
    'Retire do fogo e coloque no pão.',
    'Passe no pão a maionese e coloque o alface e tomate.',
  ];

  void changePage(BuildContext context) {
    Navigator.of(context).push(_createRoute());
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => Page2(
              title: 'Lucas',
              tutorial: const [
                "1 Frite os habúrgueres, quando estiver frito cubra com a mussarela.",
                "2 hambúrgueres",
                "Óleo para fritar",
                "2 fatias de mussarela",
                "2 pães para hambúrguer",
                "Maionese",
              ],
              passos: [
                'Frite os hambúrgueres, quando estiver frito cubra com a mussarela.',
                'Retire do fogo e coloque no pão.',
                'Passe no pão a maionese e coloque o alface e tomate.',
              ],
            ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return child;
        });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Simple Food'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: pratos.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
              ),
              title: Text(pratos[index]),
              subtitle: Text(ingredientes[index]),
              trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    changePage(context);
                  }),
            ),
          ),
        ),
      );
}
