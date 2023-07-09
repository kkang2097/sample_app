import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  static const String mongoURI = _Env.FRONTEND_PW;
}



// Test this out...
main(List<String> args) {
  // Env env = Env();
  print(String.fromEnvironment('FAKE_PW'));
  print("Hello");
}

