import 'package:get_storage/get_storage.dart';

class EcommerceLocalStorage {
  static final EcommerceLocalStorage _instance =
      EcommerceLocalStorage._internal();

  factory EcommerceLocalStorage() {
    return _instance;
  }

  EcommerceLocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
