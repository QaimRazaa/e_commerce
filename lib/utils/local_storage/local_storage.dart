import 'package:get_storage/get_storage.dart';

class LocalStorageHelper {
  static LocalStorageHelper? _instance;
  final GetStorage _box = GetStorage();

  LocalStorageHelper._internal();

  factory LocalStorageHelper() {
    _instance ??= LocalStorageHelper._internal();
    return _instance!;
  }

  Future<void> saveData(String key, dynamic value) async {
    await _box.write(key, value);
  }

  T? readData<T>(String key) {
    return _box.read<T>(key);
  }

  Future<void> removeData(String key) async {
    await _box.remove(key);
  }

  Future<void> clearData() async {
    await _box.erase();
  }
}
