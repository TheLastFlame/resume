import 'package:flutter/material.dart';

class Template {
  final String name;

  final List<Section> sections = [];

  Template({required this.name});
}

enum SectionType { personal, contact, about, skills }

class Section {
  final SectionType type;
  final String title;
  final Widget page;

  Section({
    required this.type,
    required this.title,
    required this.page,
  });
}
