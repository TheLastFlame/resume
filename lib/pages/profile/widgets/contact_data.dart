import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:email_validator/email_validator.dart';

import 'package:resume/constants.dart';
import 'package:resume/gen/i18n/strings.g.dart';
import 'package:resume/pages/profile/widgets/social_networks_list.dart';
import 'package:resume/pages/profile/widgets/textfield1.dart';
import 'package:resume/services/profile_service.dart';

class ContactDataController {
  final _service = GetIt.I<ProfileService>();

  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  void saveData() {
    _service.updateData(
      phone: phoneValidator(phoneController.text) == null
          ? phoneController.text
          : null,
      email: emailValidator(emailController.text) == null
          ? emailController.text
          : null,
    );
    _service.saveData();
  }

  ContactDataController() {
    phoneController.text = _service.phone;
    emailController.text = _service.email;
  }

  var emailValidator = (String? text) {
    if (text != null) {
      if (!EmailValidator.validate(text)) {
        return 'Введите корректный email';
      } else {
        return null;
      }
    }
    return null;
  };

  var phoneValidator = (String? text) {
    if (!RegExp(r'^(?:\+?7|8)[0-9]{10}$').hasMatch(text ?? '')) {
      return 'Введите корректный номер телефона';
    }
    return null;
  };
}

class ContactData extends StatefulWidget {
  const ContactData({super.key});

  @override
  State<ContactData> createState() => _ContactDataState();
}

class _ContactDataState extends State<ContactData> {
  late final ContactDataController controller;

  @override
  void initState() {
    controller = ContactDataController();
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
            title: t.profile.phone,
            controller: controller.phoneController,
            autofillHints: const [AutofillHints.telephoneNumber],
            validator: controller.phoneValidator,
          ),
          TextField1(
            title: t.profile.email,
            controller: controller.emailController,
            autofillHints: const [AutofillHints.email],
            validator: controller.emailValidator,
          ),
          const SizedBox(height: appPadding),
          SocialNetworksList(
            controller: SocialNetworksListController([]),
          ),
        ],
      ),
    );
  }
}
