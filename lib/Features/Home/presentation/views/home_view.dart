import 'package:flutter/material.dart';

import 'widgets/body_of_the_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodyOfTheHomeView());
  }
}
