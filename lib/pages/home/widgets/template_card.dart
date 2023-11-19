import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/navigation/router_delegate.dart';

class TemplateCard extends StatelessWidget {
  const TemplateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.zero,
        child: InkWell(
          borderRadius: BorderRadius.circular(cardBorderRadius),
          onTap: Nav.pushEditor,
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}
