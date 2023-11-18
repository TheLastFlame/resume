import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resume/constants.dart';
import 'package:resume/gen/i18n/strings.g.dart';
import 'package:resume/pages/profile/widgets/datepicker1.dart';
import 'package:resume/pages/profile/widgets/dropdown_switcher1.dart';
import 'package:resume/pages/profile/widgets/textfield1.dart';
import 'package:resume/services/profile_service.dart';

final _genres = [
  t.profile.genders.male,
  t.profile.genders.female,
  t.profile.genders.helicopter,
  t.profile.genders.su27,
  t.profile.genders.katyusha,
  t.profile.genders.sugar_horn,
  t.profile.genders.moon_picnic,
  t.profile.genders.other,
];

class PersonalDataController {
  final _service = GetIt.I<ProfileService>();

  final surnameController = TextEditingController();
  final nameController = TextEditingController();
  final middleNameController = TextEditingController();
  int? genderId;
  final birthDateController = TextEditingController();

  void saveData() {
    _service.updateData(
      surname: surnameController.text,
      name: nameController.text,
      middleName: middleNameController.text,
      genderId: genderId,
      birthDate: birthDateController.text,
    );
    _service.saveData();
  }

  PersonalDataController() {
    surnameController.text = _service.surname;
    nameController.text = _service.name;
    middleNameController.text = _service.middleName;
    genderId = _service.genderId;
    birthDateController.text = _service.birthDate;
  }
}

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  late final PersonalDataController controller;

  @override
  void initState() {
    controller = PersonalDataController();
    super.initState();
  }

  @override
  void dispose() {
    controller.saveData();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: ListView(
        padding: const EdgeInsets.all(appPadding * 3).add(
          const EdgeInsets.only(top: 100 + appPadding * 2),
        ),
        children: [
          TextField1(
            title: t.profile.surname,
            controller: controller.surnameController,
            autofillHints: const [AutofillHints.familyName],
          ),
          TextField1(
            title: t.profile.name,
            controller: controller.nameController,
            autofillHints: const [AutofillHints.givenName],
          ),
          TextField1(
            title: t.profile.middle_name,
            controller: controller.middleNameController,
            autofillHints: const [AutofillHints.middleName],
          ),
          DropdownSwitcher1(
            hint: t.profile.gender,
            onChanged: (value) {
              controller.genderId = value;
            },
            selectedIndex: controller.genderId,
            options: _genres,
          ),
          Datepicker1(
            hint: t.profile.birth_date,
            controller: controller.birthDateController,
          ),
        ],
      ),
    );
  }
}
