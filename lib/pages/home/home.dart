import 'package:flutter/material.dart';
import 'package:resume/pages/home/widgets/homeappbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
    );
  }
}
