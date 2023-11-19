import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/pages/home/widgets/template_card.dart';

class TemplatesGrid extends StatelessWidget {
  const TemplatesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(appPadding).add(
        const EdgeInsets.only(top: 100 + appPadding * 5),
      ),
      childAspectRatio: 210 / 297,
      crossAxisCount: 2,
      children: [
        TemplateCard(),
        TemplateCard(),
        TemplateCard(),
      ],
    );
  }
}
