// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, use_key_in_widget_constructors, sort_child_properties_last
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyFirstRealApp",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Primeiro App"),
        backgroundColor: Colors.blue[700],
      ),
      body: Column(
        children: [
          Image.asset("assets/disney.jpg"),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  height: 50,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "DisneyLand",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Anaheim, CA 92802, Estados Unidos"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 160,
                    top: 5,
                  ),
                  height: 50,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_outlined,
                        color: Colors.blue[600],
                      ),
                      Text("4321"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Icon(
                        Icons.phone,
                        color: Colors.blue[600],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.blue[600],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Icon(
                        Icons.share,
                        color: Colors.blue[600],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                color: Colors.transparent,
                height: 4,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text("Ligar"),
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text("Endereço"),
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text("Compartilhar"),
                      ),
                      color: Colors.transparent,
                    ),
                  )
                ],
              ),
              Container(
                height: 350,
                child: Expanded(
                    child: Text(
                        """ Minha experiência de intercâmbio na Disney foi uma jornada inesquecível que combinou aprendizado cultural e diversão. Durante o período em que estive nos Estados Unidos, tive a oportunidade de explorar a cultura americana e vivenciar os encantos do parque temático mais icônico do mundo. Neste ensaio, compartilharei as experiências marcantes dessa aventura única.

Desde o momento em que pus os pés no aeroporto de Orlando, a magia da Disney já estava no ar. O entusiasmo e a alegria das pessoas ao meu redor eram contagiantes. Logo nos primeiros dias, visitei o Magic Kingdom, onde o castelo da Cinderela se ergue majestosamente contra o céu azul. A sensação de entrar naquele mundo de conto de fadas foi indescritível.

Além das atrações emocionantes, como a montanha-russa do Space Mountain e a Splash Mountain, o que mais me impressionou foram os detalhes meticulosos em cada canto do parque. Cada rua do Magic Kingdom parecia ter sua própria história, e os funcionários, chamados de "cast members", eram incrivelmente atenciosos, fazendo com que cada visita fosse especial.

No Epcot Center, pude explorar diferentes culturas do mundo. Os pavilhões representando países como México, França, Japão e Marrocos me proporcionaram uma compreensão mais profunda das tradições e da culinária de cada lugar. Foi como viajar pelo mundo em um único dia.

O aprendizado cultural não se limitou ao parque, pois também tive a oportunidade de interagir com pessoas de todo o mundo que visitam a Disney. Foi enriquecedor conhecer diferentes perspectivas e compartilhar nossas experiências culturais.

Além disso, durante meu intercâmbio, tive a chance de assistir a um desfile noturno espetacular e a shows de fogos de artifício que iluminavam o céu de Orlando. A emoção e a beleza desses espetáculos deixaram uma marca duradoura em minha memória.

Conclusão

Minha experiência de intercâmbio na Disney foi mais do que apenas diversão; foi uma imersão na cultura americana e uma celebração da imaginação e criatividade que a Disney inspira. Essa jornada me ensinou que a magia está presente não apenas nos castelos e atrações, mas também nas pessoas que compartilham essa experiência.

À medida que deixei a Disney para trás e continuei minha jornada de intercâmbio, levei comigo as lições de criatividade, atenção aos detalhes e diversidade cultural que a Disney me proporcionou. A experiência na Disney não foi apenas um sonho realizado, mas também uma fonte de inspiração e aprendizado que carregarei comigo ao longo da vida. """)),
              )
            ],
          )
        ],
      ),
    );
  }
}
