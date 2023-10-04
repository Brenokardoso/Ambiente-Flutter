// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black, // Define a cor de fundo padrão
          primaryColor: Colors.black, // Define a cor primária
          canvasColor: Color.fromARGB(255, 0, 0, 0)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String texto = """
Naruto Uzumaki da Silva Olá, pessoal!
Acabei de salvar a nossa querida Aldeia da Folha de mais uma ameaça! Com a força da amizade e a determinação que aprendi ao longo da minha jornada, pudemos superar todos os obstáculos e proteger o lugar que chamamos de lar.
Lembrando sempre das palavras do meu mestre, Kakashi-sensei, e dos laços que formei com meus amigos, sei que podemos enfrentar qualquer desafio que o mundo ninja nos reserve. Estou pronto para continuar treinando e protegendo a Aldeia da Folha, porque esse é o meu sonho, e nunca desistirei dele!
Agradeço a todos vocês pelo apoio e confiança. Juntos, somos imbatíveis!
Acredite!
          """;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarTheme(
        data: BottomNavigationBarThemeData(),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "",
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(),
            //   label: "",
            // ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(

      //   iconSize: 23,

      // ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Instagram",
        ),
        backgroundColor: Colors.black,
        actions: [
          Center(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_box_outlined,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 1,
          ),
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 60,
                    color: Colors.black,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.all(7)),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i.pinimg.com/736x/cb/de/96/cbde96234fe5ab1398e93d10c82cbc68.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5hgFNMOGyII4VOeXAnK7WkFaGZ4pE60a09w&usqp=CAU",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://i.pinimg.com/1200x/17/07/2b/17072bd364148be7bc769b3bad131297.jpg",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://orgulhootaku.files.wordpress.com/2014/02/1.jpg?w=584",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://cdn.pensador.com/img/imagens/me/lh/melhores_frases_de_jujutsu_kaisen_f_l.jpg?class=ogImageRectangle",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://1.bp.blogspot.com/-cgz4KeAeU4I/Xcf3mo6wwPI/AAAAAAAAeBo/KbmFuA9Ia_oWMOsUGd5I_RlRPzAexIn-wCNcBGAsYHQ/s1600/animes-overpower.jpg",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwnCxr7YJAWkxNpGfs5sGG1N69x69OwO4zndHCxRq44XGmOcsehfMsmxa55tbONedE8Eg&usqp=CAU",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                // Postagem por completo
                height: 400,
                color: Colors.black,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pink,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6FGex7Dnx0e9bUuuojMg1MzB0WojkjnHxyg&usqp=CAU",
                          ),
                        ),
                      ),
                      trailing: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                      ),
                      title: Text(
                        "Naruto Uzumaki da Silva",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Container(
                  height: 340,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/736x/d6/fa/1c/d6fa1c1e656d639203e5c5f6088b5d7b.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
          Container(
            color: Color.fromARGB(255, 0, 0, 0),
            height: 50,
            child: Row(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.white,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 250)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_outline,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Text(
            "2.123 curtidas",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            texto,
            style: TextStyle(color: Colors.white),
          )
        ], //Body Central ListView
      ),
    );
  }
}

class MyStateApp extends StatefulWidget {
  const MyStateApp({super.key});

  @override
  State<MyStateApp> createState() => _MyStateAppState();
}

class _MyStateAppState extends State<MyStateApp> {
  @override
  Widget build(BuildContext context) {
    return App();
  }
}
