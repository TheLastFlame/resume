import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/controllers/pill_tabbar.dart';
import 'package:resume/gen/i18n/strings.g.dart';
import 'package:resume/navigation/router_delegate.dart';
import 'package:resume/pages/home/widgets/pill_appbar.dart';
import 'package:resume/pages/home/widgets/pill_tabbar.dart';
import 'package:resume/pages/profile/widgets/datepicker1.dart';
import 'package:resume/pages/profile/widgets/dropdown_switcher1.dart';
import 'package:resume/pages/profile/widgets/social_networks_list.dart';
import 'package:resume/pages/profile/widgets/textfield1.dart';

class ProfilePortrait extends StatelessWidget {
  ProfilePortrait({super.key});

  final PillTabBarController tabBarController =
      PillTabBarController(totalTabCount: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, forceMaterialTransparency: true),
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) => tabBarController.changeTab(index),
            children: const [
              PersonalData(),
              ContactData(),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: appPadding, horizontal: appPadding),
                child: PillAppBar(
                  name: "Иван Иванович",
                  onAvatarTap: () => Nav.fuckGoBack(),
                  borderRadius: appBorderRadius,
                  profileHeight: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: appPadding * 4, vertical: appPadding),
                child: PillTabBar(
                  controller: tabBarController,
                  tabHeight: 40,
                  borderRadius: appBorderRadius,
                  tabs: [
                    PillTab(title: t.profile.personal_data),
                    PillTab(title: t.profile.contact_data),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PersonalData extends StatelessWidget {
  const PersonalData({super.key});

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
    );
  }
}

class ContactData extends StatelessWidget {
  const ContactData({super.key});

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: ListView(
        padding: const EdgeInsets.all(appPadding * 3).add(
          const EdgeInsets.only(top: 100 + appPadding * 2),
        ),
        children: [
          TextField1(
            title: t.profile.phone,
            controller: TextEditingController(),
            autofillHints: const [AutofillHints.telephoneNumber],
          ),
          TextField1(
            title: t.profile.email,
            controller: TextEditingController(),
            autofillHints: const [AutofillHints.email],
          ),
          SizedBox(height: appPadding),
          SocialNetworksList(),
        ],
      ),
    );
  }
}
