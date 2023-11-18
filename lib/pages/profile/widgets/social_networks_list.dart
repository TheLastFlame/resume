import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:resume/constants.dart';
import 'package:resume/gen/i18n/strings.g.dart';

class SocialNetworksListController {
  late final ObservableList socialMediaList;

  SocialNetworksListController(List? socialMediaList) {
    this.socialMediaList = List.from(socialMediaList ?? []).asObservable();
  }
}

class SocialNetworksList extends StatelessWidget {
  const SocialNetworksList({super.key, required this.controller});

  final SocialNetworksListController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Observer(builder: (_) {
          return Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                t.profile.social_networks,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: appPadding),
              ...controller.socialMediaList
            ],
          );
        }),
      ),
    );
  }
}
