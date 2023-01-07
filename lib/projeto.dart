import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../pag3.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required String title});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String ingr = " ";

  final TextEditingController _controller = TextEditingController();

  get child => null;

  void changePage() {
    Navigator.of(context).push(_createRoute());
  }

  @override
  Widget build(BuildContext context) {
    List<String> ingredientes = [
      'Hamburguer, pão, ovos, alface, tomate, cebola'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Simple Food"),
        centerTitle: true,
      ),
      backgroundColor: Colors.amber,
      // ignore: dead_code
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network('https://i.postimg.cc/W4D1wf8R/logo.jpg'),
          const Text("Simple Food",
              style: TextStyle(fontSize: 48, color: Colors.black)),
          Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                  controller: _controller,
                  onSubmitted: (value) {
                    if (_controller.text != "Hamburguer" &&
                        _controller.text != "hamburguer" &&
                        _controller.text != "hambúrguer" &&
                        _controller.text != "Hambúrguer" &&
                        _controller.text != "óleo" &&
                        _controller.text != "Óleo" &&
                        _controller.text != "oleo" &&
                        _controller.text != "Oleo" &&
                        _controller.text != "mussarela" &&
                        _controller.text != "Mussarela" &&
                        _controller.text != "tomate" &&
                        _controller.text != "Tomate" &&
                        _controller.text != "Pão" &&
                        _controller.text != "Pao" &&
                        _controller.text != "pão" &&
                        _controller.text != "pao" &&
                        _controller.text != "Alface" &&
                        _controller.text != "alface" &&
                        _controller.text != "maionese" &&
                        _controller.text != "Maionese" &&
                        _controller.text != "queijo" &&
                        _controller.text != "Queijo") {
                      print("inválido");
                    } else {
                      changePage();
                    }
                    ;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 6.0),
                        child: ElevatedButton(
                            onPressed: () {
                              ingr = _controller.text;
                              if (_controller.text != "Hamburguer" &&
                                  _controller.text != "hamburguer" &&
                                  _controller.text != "hambúrguer" &&
                                  _controller.text != "Hambúrguer" &&
                                  _controller.text != "óleo" &&
                                  _controller.text != "Óleo" &&
                                  _controller.text != "oleo" &&
                                  _controller.text != "Oleo" &&
                                  _controller.text != "mussarela" &&
                                  _controller.text != "Mussarela" &&
                                  _controller.text != "tomate" &&
                                  _controller.text != "Tomate" &&
                                  _controller.text != "Pão" &&
                                  _controller.text != "Pao" &&
                                  _controller.text != "pão" &&
                                  _controller.text != "pao" &&
                                  _controller.text != "Alface" &&
                                  _controller.text != "alface" &&
                                  _controller.text != "maionese" &&
                                  _controller.text != "Maionese" &&
                                  _controller.text != "manteiga") {
                                return print("inválido");
                              } else {
                                changePage();
                              }
                              ;
                            },
                            child: const Icon(Icons.search)),
                      ),
                      label: const Text(
                        'Digite seus ingredientes',
                        style: TextStyle(color: Color.fromARGB(255, 4, 8, 252)),
                      ))),
            ),
          )
        ],
      ),
    );
  }
}

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

  Map<String, List<String>> ingredientesReceita = {
    'Feijoada': [
      '1kg de Feijão preto',
      '880g de Pertences para Feijoada Perdigão (Linguiça calabresa, Costela salgada, Carne suína salgada, Pé salgado, Bacon, Pele suína)',
      '500g de Lombo suíno cortado em cubos grandes',
      '250g de Paio Perdigão em rodelas',
      '250g de Rabo salgado',
      '300g de Cebola em cubos',
      '50g de Banha suína',
      '5 dentes de Alho picados',
      '2 folhas de Louro'
    ],
    'Strogonoff de Frango': [
      '3 peitos de frango cortados em cubos',
      '1 dente de alho picado',
      'sal e pimenta a gosto',
      '1 cebola picada',
      '2 colheres (sopa) de maionese',
      '1 colher de manteiga',
      '1/2 copo de ketchup',
      '1/3 copo de mostarda',
      '1 copo de cogumelos',
      '1 copo de creme de leite',
      'batata palha a gosto'
    ],
    'Hamburguer Caseiro': [
      '1 kg de carne moída (de preferência patinho)',
      '1 sachê de creme de cebola',
      '1 cebola media picada',
      '4 dentes de alho picado',
      'cebolinha a gosto',
      'sal e pimenta a gosto',
      'orégano a gosto'
    ],
    'Bolo de ovos': [
      '2 xícaras de açúcar',
      '250g de margarina',
      '3 ovos',
      '3 xícaras de farinha de trigo(com fermento)',
      '1 xícara de leite',
      '1 pitada de sal'
    ],
  };

  Map<String, List<String>> modoPreparo = {
    'Feijoada': [
      'Iniciar dessalgando o pé, o rabo e a costela suína com 12h de antecedência. Em uma bacia colocar os cortes e cobrir com água corrente, trocar a água a cada 3 horas, mantendo sempre dentro da geladeira. Quando passar esse tempo, levar as carnes para cozinhar em água fervente por 30 minutos.',
      'Deixar o feijão de molho em água por 1 hora antes do preparo.',
      'Cortar o lombo e o bacon em cubos grandes, a calabresa e o paio em rodelas e reservar.',
      'Aquecer uma panela de pressão, com capacidade para cozinhar a feijoada, acrescentar a banha e a cebola cortada em cubos, refogar e acrescentar o alho e as folhas de louro em seguida.',
      'Acrescentar o feijão escorrido, as carnes desalgadas, o paio e a calabresa, refogar rapidamente e cobrir com 7 litros de água. Tampar a panela e deixar cozinhar por 50 minutos depois que a panela pegar pressão.',
      'Abrir a panela passado os 50 minutos, conferir se o feijão e as carnes estão completamente cozidos. Caso necessário, volte para o fogo e finalize. Corrija o sal, se necessário.',
      'Sirva a feijoada acompanhada de arroz, farofa, couve refogada e torresmo.'
    ],
    'Strogonoff de Frango': [
      'Em uma panela, misture o frango, o alho, a maionese, o sal e a pimenta.',
      'Em uma frigideira grande, derreta a manteiga e doure a cebola.',
      'Junte o frango temperado até que esteja dourado.',
      'Adicione os cogumelos, o ketchup e a mostarda.',
      'Incorpore o creme de leite e retire do fogo antes de ferver.',
      'Sirva com arroz branco e batata palha.',
    ],
    'Hamburguer Caseiro': [
      'Misture todos os ingredientes, amasse bem e forme bolinhas, depois achate para ter a forma de hambúrguer.',
      'Frite numa frigideira antiaderente, coloque uma colher de óleo pois a carne não tem gordura.',
    ],
    'Bolo de ovos': [
      'Misture bem o açúcar,a margarina e os ovos.',
      'Acrescente a farinha de trigo, o leite e a pitada de sal.',
      'Bata bem por uns 7 minutos.',
      'Coloque a massa ao forno em uma forma untada com manteiga e polvilhada com farinha de trigo, por uns 40 minutos.',
    ],
  };

  List<String> ingredientes = [
    'Feijão preto, carne seca, bacon, linguiça calabresa, toucinho defumado, cebolas, dentes de alho...',
    'Manteiga, filé de frango,molho de tomate, ketchup, creme de leite...',
    'Carne de hamburguer, bacon, ovo, sal, cebola, tomate...',
    'Farinha de trigo, Fermento Biológico, sal, 3 ovos ',
    '5',
  ];

  List<String> pratos = [
    'Feijoada',
    'Strogonoff',
    'Hamburguer',
    'Pizza de Frango',
    'Lasanha',
  ];

  void changePage(BuildContext context, String receita) {
    ingredientesReceita[receita];
    Navigator.of(context).push(_createRoute(receita));
  }

  Route _createRoute(String receita) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => Page2(
              title: receita,
              tutorial: ingredientesReceita[receita]!,
              passos: modoPreparo[receita]!,
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
          itemCount: ingredientesReceita.keys.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: const CircleAvatar(
                radius: 28,
              ),
              title: Text(ingredientesReceita.keys.toList()[index]),
              subtitle: Text(ingredientes[index]),
              trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    changePage(
                        context, ingredientesReceita.keys.elementAt(index));
                  }),
            ),
          ),
        ),
      );
}
