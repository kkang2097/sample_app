import 'package:flutter_dotenv/flutter_dotenv.dart';


class Env {
  static init() async {
    await dotenv.load(fileName: 'asset/env/.env_dev');
    assert(dotenv.env.containsKey("ENVIRONMENT_NAME"));
  }
}