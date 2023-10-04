// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 100,
              width: 100,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/026/266/484/original/default-avatar-profile-icon-social-media-user-photo-image-vector.jpg"),
              ),
            ),
            ImageAvatar(
              urlImage:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu2Q87GXTzsxY-LVXuhBqRW7lURrQzUDi-UA&usqp=CAU",
            ),
            ImageAvatar(
              urlImage:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNw2PvZGeBIgppM7rzuLMEG3tVJXxa-IC5qw&usqp=CAU,",
            )
          ],
        ),
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 227, 175),
              borderRadius: BorderRadius.circular(60)),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Positioned(
          child: Icon(Icons.mode_comment),
          bottom: 10,
          right: 4,
        )
      ],
    );
  }
}
