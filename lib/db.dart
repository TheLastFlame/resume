import 'package:get_storage/get_storage.dart';

abstract interface class UserDataRepo {
  String getSurname();
  String getName();
  String getMiddleName();
  int? getGenderId();
  String getBirthDate();

  void setSurname(String surname);
  void setName(String name);
  void setMiddleName(String middleName);
  void setGenderId(int? genderId);
  void setBirthDate(String birthDate);

  String getPhone();
  String getEmail();

  void setPhone(String phone);
  void setEmail(String email);
}

class UserDataByGetStorage implements UserDataRepo {
  final storage = GetStorage('personalData');

  static Future<UserDataByGetStorage> init() async {
    await GetStorage.init('personalData');
    return UserDataByGetStorage();
  }

  @override
  String getSurname() {
    return storage.read('surname') ?? '';
  }

  @override
  String getName() {
    return storage.read('name') ?? '';
  }

  @override
  String getMiddleName() {
    return storage.read('middleName') ?? '';
  }

  @override
  int? getGenderId() {
    return storage.read('genderId');
  }

  @override
  String getBirthDate() {
    return storage.read('birthDate') ?? '';
  }

  @override
  void setSurname(String surname) {
    storage.write('surname', surname);
  }

  @override
  void setName(String name) {
    storage.write('name', name);
  }

  @override
  void setMiddleName(String middleName) {
    storage.write('middleName', middleName);
  }

  @override
  void setGenderId(int? genderId) {
    storage.write('genderId', genderId);
  }

  @override
  void setBirthDate(String birthDate) {
    storage.write('birthDate', birthDate);
  }

  @override
  String getPhone() {
    return storage.read('phone') ?? '';
  }

  @override
  String getEmail() {
    return storage.read('email') ?? '';
  }

  @override
  void setPhone(String phone) {
    storage.write('phone', phone);
  }

  @override
  void setEmail(String email) {
    storage.write('email', email);
  }
}
