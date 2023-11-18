import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/gen/i18n/strings.g.dart';
import 'package:resume/pages/profile/widgets/social_network_card.dart';

class SocialNetworksList extends StatelessWidget {
  const SocialNetworksList({super.key});

  // List<Widget>

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              t.profile.social_networks,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(width: appPadding),
            SocialNetworksCard(text: t.profile.add, icon: Icons.add),
          ],
        ),
      ),
    );
  }
}
