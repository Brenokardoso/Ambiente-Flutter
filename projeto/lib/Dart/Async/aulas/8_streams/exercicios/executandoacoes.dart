import 'dart:async';

void main() {
  var stream = Stream<dynamic>.periodic(Duration(seconds: 2), (_) {
    print("Ação a cada dois segundos");
  });
  var subscription = stream.take(4).listen((_) {});
  
  subscription.onDone(() {
    print("Stream finalizada");
  });
}
