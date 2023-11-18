import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/navigation/router_delegate.dart';
import 'package:resume/pages/home/widgets/pill_appbar.dart';
import 'package:resume/pages/profile/widgets/datepicker1.dart';
import 'package:resume/pages/profile/widgets/dropdown_switcher1.dart';
import 'package:resume/pages/profile/widgets/textfield1.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(forceMaterialTransparency: true, toolbarHeight: 0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PillAppBar(
              name: "Иван Иванович",
              onAvatarTap: () => Nav.fuckGoBack(),
              borderRadius: appBorderRadius,
              profileHeight: 60,
              centerTitle: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: appPadding * 2),
            child: Text(
              'Личные данные:',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 3),
            child: AutofillGroup(
              child: Column(
                children: [
                  TextField1(
                    title: 'Фамилия',
                    controller: TextEditingController(),
                    autofillHints: const [AutofillHints.familyName],
                  ),
                  TextField1(
                    title: 'Имя',
                    controller: TextEditingController(),
                    autofillHints: const [AutofillHints.givenName],
                  ),
                  TextField1(
                    title: 'Отчество',
                    controller: TextEditingController(),
                    autofillHints: const [AutofillHints.middleName],
                  ),
                  DropdownSwitcher1(
                    hint: 'Пол',
                    onChanged: (value) {},
                    options: const [
                      'Мужской',
                      'Женский',
                      'Боевой вертолёт',
                      'Истребитель Су-27',
                      'Реактивная установка БМ-13 "Катюша"',
                      'Сахарный рожок 13 рублей штука',
                      'Пик Ник на Луне',
                      'Другое'
                    ],
                  ),
                  Datepicker1(
                    hint: 'Дата рождения',
                    controller: TextEditingController(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
