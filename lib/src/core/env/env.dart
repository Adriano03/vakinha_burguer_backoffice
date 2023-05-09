import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;
  Env._();

  static Env get instance {
    _instance ??= Env._();
    return _instance!;
  }

  // Carregar variáveis de ambiente;
  Future<void> load() => dotenv.load();
  
  // Obtém uma variável de ambiente pelo nome da chave, se não tiver retorna nulo;
  String? maybeGet(String key) => dotenv.maybeGet(key);

  // Obtém uma variável de ambiente pelo nome da chave, se não tiver lança exceção;
  String get(String key) => dotenv.get(key);
}
