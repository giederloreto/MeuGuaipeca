import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meu_guaipeca/settings/libs_impl/app_storage_client/app_storage_client_interface.dart';

class AppSecureStorage implements IAppStoreClient {
  final FlutterSecureStorage _flutterSecureStorage;

  AppSecureStorage(this._flutterSecureStorage);

  @override
  Future<void> delete(String key) async {
    try {
      return _flutterSecureStorage.delete(key: key);
    } on Exception catch (_) {}
  }

  @override
  Future<bool?> getBool(String key) async {
    try {
      final value = _flutterSecureStorage.read(key: key);
      if (value != null) {
        return value == 'true';
      }
      return null;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<String?> getString(String key) async {
    try {
      final value = _flutterSecureStorage.read(key: key);
      return value;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> setBool(String key, bool value) async {
    try {
      _flutterSecureStorage.write(key: key, value: value.toString());
    } catch (_) {}
  }

  @override
  Future<void> setString(String key, String? value) async {
    try {
      _flutterSecureStorage.write(key: key, value: value);
    } catch (_) {}
  }
}
