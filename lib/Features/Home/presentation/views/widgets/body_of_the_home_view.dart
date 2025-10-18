import 'package:bookly/Features/Home/presentation/views/widgets/books_list_view_builder.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_abb_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/app_slide_animation_text.dart';
import 'package:flutter/material.dart';

class BodyOfTheHomeView extends StatefulWidget {
  const BodyOfTheHomeView({super.key});

  @override
  State<BodyOfTheHomeView> createState() =>
      _BodyOfTheHomeViewState();
}

class _BodyOfTheHomeViewState
    extends State<BodyOfTheHomeView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    // FutureDelay
    // navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideAnimation = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(height: 40),
        BooksListViewBuilder(),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: AppSlideAnimationText(
              slideAnimation: slideAnimation,
              text: 'Best Sellers',
            ),
          ),
        ),
      ],
    );
  }
}
