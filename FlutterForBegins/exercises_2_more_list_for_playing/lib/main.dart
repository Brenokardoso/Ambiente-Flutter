// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercicios",
      debugShowCheckedModeBanner: false,
      routes: {
        "/Uva": (context) => Uva(),
      },
      home: Cardapio(),
    );
  }
}

class Frutas extends StatelessWidget {
  Frutas({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frutas"),
        backgroundColor: Color.fromARGB(255, 87, 220, 156),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.auto_fix_normal_sharp),
            trailing: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/Uva");
              },
              child: Text("Botão"),
            ),
            title: Text("Uva"),
            subtitle: Text("Vinho"),
          ),
          ListTile(
            leading: Icon(Icons.auto_fix_normal_sharp),
            trailing: TextButton(
              onPressed: null,
              child: Text("Botão"),
            ),
            title: Text("Maçã"),
            subtitle: Text("Torta"),
          ),
          ListTile(
            leading: Icon(Icons.auto_fix_normal_sharp),
            trailing: TextButton(
              onPressed: null,
              child: Text("Botão"),
            ),
            title: Text("Abacaxi"),
            subtitle: Text("Vitamina"),
          ),
          ListTile(
            leading: Icon(Icons.auto_fix_normal_sharp),
            trailing: TextButton(
              onPressed: null,
              child: Text("Botão"),
            ),
            title: Text("Laranja"),
            subtitle: Text("Relaxada"),
          ),
        ],
      ),
    );
  }
}

class Uva extends StatelessWidget {
  Uva({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uva"),
        backgroundColor: Colors.purple[800],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.purple[400],
          ),
        ),
      ),
    );
  }
}

class Cardapio extends StatelessWidget {
  Cardapio({Key? key});

  var comida = [
    "Arroz",
    "Feijão",
    "Frango",
    "Carne de boi",
    "Peixe",
    "Salmão",
    "Sushi",
    "Sashimi",
    "Lasanha",
    "Pizza",
    "Hambúrguer",
    "Batata frita",
    "Salada",
    "Camarão",
    "Lula",
    "Molho de tomate",
    "Macarrão",
    "Espaguete",
    "Risoto",
    "Tofu",
    "Brócolis",
    "Alface",
    "Cenoura",
    "Cebola",
    "Abobrinha",
    "Purê de batata",
    "Molho de queijo",
    "Batata assada",
    "Coxinha",
    "Pastel",
    "Empada",
    "Sorvete",
    "Bolo",
    "Torta",
    "Café",
    "Chá",
    "Suco de laranja",
    "Refrigerante",
    "Água mineral",
    "Cerveja",
    "Vinho",
    "Caipirinha",
    "Margarita",
    "Mojito",
    "Tequila",
    "Sangria",
    "Sopa",
    "Pão",
    "Croissant",
    "Sanduíche",
    "Salmão grelhado",
    "Costela de porco",
    "Churrasco",
    "Omelete",
    "Panqueca",
    "Tacos",
    "Guacamole",
    "Nachos",
    "Tapioca",
    "Yakissoba",
    "Tempurá",
    "Quibe",
    "Kibe",
    "Esfiha",
    "Falafel",
    "Churros",
    "Doce de leite",
    "Pudim",
    "Tiramisù",
    "Chocolate",
    "Pipoca",
    "Linguiça",
    "Cachorro-quente",
    "Bife à milanesa",
    "Polenta",
    "Rabanada",
    "Baião de dois",
    "Vatapá",
    "Moqueca",
    "Bobó de camarão",
    "Feijoada",
    "Tacacá",
    "Açaí",
    "Pequi",
    "Cupuaçu",
    "Mangaba",
    "Caju",
    "Bacalhau",
    "Paella",
    "Ceviche",
    "Goulash",
    "Ramen",
    "Miso",
    "Sopa de cebola",
    "Creme de aspargos",
    "Caldinho de feijão",
    "Crepe",
    "Burrito",
    "Pancake",
    "Bourguignon",
    "Tagliatelle",
    "Sorbet",
    "Tapioca",
    "Cuscuz",
    "Mousse",
    "Ricota",
    "Amendoim",
    "Castanha",
    "Noz",
    "Avelã",
    "Pistache",
    "Coco",
    "Amêndoa",
    "Kiwi",
    "Uva",
    "Morango",
    "Melancia",
    "Melão",
    "Pêssego",
    "Abacaxi",
    "Maracujá",
    "Manga",
    "Pera",
    "Maçã",
    "Banana",
    "Ameixa",
    "Cereja",
    "Limão",
    "Laranja",
    "Goiaba",
    "Framboesa",
    "Mirtilo",
    "Abóbora",
    "Beterraba",
    "Repolho",
    "Nabo",
    "Quiabo",
    "Berinjela",
    "Pimentão",
    "Cogumelo",
    "Alho-poró",
    "Alcachofra",
    "Aspargo",
    "Salsicha",
    "Presunto",
    "Bacon",
    "Salame",
    "Pepperoni",
    "Queijo",
    "Leite",
    "Iogurte",
    "Manteiga",
    "Cream cheese",
    "Ovos",
    "Azeite",
    "Vinagre",
    "Mostarda",
    "Ketchup",
    "Maionese",
    "Molho de pimenta",
    "Salsa",
    "Coentro",
    "Manjericão",
    "Orégano",
    "Cominho",
    "Canela",
    "Cúrcuma",
    "Gengibre",
    "Cardamomo",
    "Noz-moscada",
    "Cravo",
    "Páprica",
    "Café expresso",
    "Latte",
    "Cappuccino",
    "Mocha",
    "Macchiato",
    "Cerveja artesanal",
    "Sushi",
    "Sashimi",
    "Tempura",
    "Yakitori",
    "Edamame",
    "Wasabi",
    "Soy sauce",
    "Mochi",
    "Dumplings",
    "Dim sum",
    "Spring rolls",
    "Pho",
    "Pad Thai",
    "Satay",
    "Ramen",
    "Gyoza",
    "Teriyaki",
    "Sukiyaki",
    "Okonomiyaki",
    "Udon",
    "Yaki soba",
    "Onigiri",
    "Sake",
    "Soju",
    "Shochu",
    "Baklava",
    "Hummus",
    "Tabbouleh",
    "Shawarma",
    "Baba ganoush",
    "Tahini",
    "Kebab",
    "Dolma",
    "Falafel",
    "Moussaka",
    "Tzatziki",
    "Spanakopita",
    "Baklava",
    "Lassi",
    "Chaat",
    "Samosa",
    "Vada",
    "Tandoori",
    "Biryani",
    "Raita",
    "Chapati",
    "Naan",
    "Pakora",
    "Gulab jamun",
    "Rasgulla",
    "Thali",
    "Idli",
    "Dosa",
    "Uttapam",
    "Chai",
    "Lassi",
    "Pani puri",
    "Jalebi",
    "Bhindi masala",
    "Aloo gobi",
    "Dal",
    "Samosa",
    "Vada pav",
    "Paneer tikka",
    "Bhel puri"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("Cardapio"),
        backgroundColor: Colors.redAccent[400],
      ),
      body: ListView.builder(
        itemCount: comida.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.food_bank_rounded),
          trailing: TextButton(
            onPressed: () {
              print("Foi pedido");
            },
            child: Text("Pedir"),
          ),
          title: Text(
            "${comida[index]}",
          ),
          onTap: () {
            print("Hi");
          },
        ),
      ),
    );
  }
}
