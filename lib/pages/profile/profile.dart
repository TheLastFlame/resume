import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/i18n/strings.g.dart';
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
              t.profile.personal_data,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 3),
            child: AutofillGroup(
              child: Column(
                children: [
                  TextField1(
                    title: t.profile.surname,
                    controller: TextEditingController(),
                    autofillHints: const [AutofillHints.familyName],
                  ),
                  TextField1(
                    title: t.profile.name,
                    controller: TextEditingController(),
                    autofillHints: const [AutofillHints.givenName],
                  ),
                  TextField1(
                    title: t.profile.middle_name,
                    controller: TextEditingController(),
                    autofillHints: const [AutofillHints.middleName],
                  ),
                  DropdownSwitcher1(
                    hint: t.profile.gender,
                    onChanged: (value) {},
                    options: [
                      t.profile.genders.male,
                      t.profile.genders.female,
                      t.profile.genders.helicopter,
                      t.profile.genders.su27,
                      t.profile.genders.katyusha,
                      t.profile.genders.sugar_horn,
                      t.profile.genders.moon_picnic,
                      t.profile.genders.other,
                    ],
                  ),
                  Datepicker1(
                    hint: t.profile.birth_date,
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
