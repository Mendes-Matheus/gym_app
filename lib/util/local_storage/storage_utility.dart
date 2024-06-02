import 'package:get_storage/get_storage.dart';

class TLocalStorage {

  static final TLocalStorage _instance = TLocalStorage._internal();

  TLocalStorage._internal();

  factory TLocalStorage() => _instance;

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? getData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generic method to delete data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data from storage
  Future<void> clearAll() async {
    await _storage.erase();
  }

}