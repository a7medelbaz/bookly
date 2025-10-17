import 'package:bookly/Features/Home/presentation/views/widgets/custom_abb_bar.dart';
import 'package:flutter/material.dart';

class BodyOfTheHomeView extends StatelessWidget {
  const BodyOfTheHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar()],
    );
  }
}
