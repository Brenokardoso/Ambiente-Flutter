void main() {
  var stream = Stream<dynamic>.periodic(
      Duration(milliseconds: 500), (int count) => count);
  var subscription = stream.take(6).listen((data) => print(data));
  subscription.onDone(() {
    print("Stream Concluído");
  });
}
