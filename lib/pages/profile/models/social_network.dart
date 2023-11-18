import 'package:flutter/material.dart';

class SocialNetwork {
  String text;
  IconData? icon;

  SocialNetwork({required this.text, this.icon});
}

final socialNetworks = [
  SocialNetwork(text: 'Telegram', icon: Icons.telegram),
];
