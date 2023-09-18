void main() {
  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (_) {
    print("ok");
  });
  stream.take(4);
  stream = stream.asBroadcastStream();

  stream.take(5).listen((event) {
    print("Esse é o evento 1 com $event de contagem");
  });

  stream.take(5).listen((event) {
    print("Esse é o evento 2 com $event de contagem");
  });
}
