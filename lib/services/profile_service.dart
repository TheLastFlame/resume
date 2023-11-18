import 'package:get_it/get_it.dart';
import 'package:resume/db.dart';

class ProfileService {
  late final UserDataRepo _repo;
  late String _surname;
  late String _name;
  late String _middleName;
  int? _genderId;
  late String _birthDate;

  late String _email;
  late String _phone;

  String get surname => _surname;
  String get name => _name;
  String get middleName => _middleName;
  int? get genderId => _genderId;
  String get birthDate => _birthDate;

  String get email => _email;
  String get phone => _phone;

  ProfileService() {
    _repo = GetIt.I<UserDataRepo>();

    updateData(
      surname: _repo.getSurname(),
      name: _repo.getName(),
      middleName: _repo.getMiddleName(),
      genderId: _repo.getGenderId(),
      birthDate: _repo.getBirthDate(),
      email: _repo.getEmail(),
      phone: _repo.getPhone(),
    );
  }

  void updateData({
    surname,
    name,
    middleName,
    genderId,
    birthDate,
    email,
    phone,
  }) {
    _surname = surname ?? this.surname;
    _name = name ?? this.name;
    _middleName = middleName ?? this.middleName;
    _genderId = genderId ?? this.genderId;
    _birthDate = birthDate ?? this.birthDate;

    _email = email ?? this.email;
    _phone = phone ?? this.phone;

    saveData();
  }

  void saveData() {
    _repo.setSurname(surname);
    _repo.setName(name);
    _repo.setMiddleName(middleName);
    _repo.setGenderId(genderId);
    _repo.setBirthDate(birthDate);

    _repo.setEmail(email);
    _repo.setPhone(phone);
  }
}
