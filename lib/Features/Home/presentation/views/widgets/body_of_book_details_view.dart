import '../../../../../Core/utils/styles.dart';
import 'app_slide_animation_text.dart';
import 'custom_book_card.dart';
import 'selected_book_details.dart';
import 'package:flutter/material.dart';

class BodyOfBookDetailsView
    extends StatefulWidget {
  const BodyOfBookDetailsView({super.key});

  @override
  State<BodyOfBookDetailsView> createState() =>
      _BodyOfBookDetailsViewState();
}

class _BodyOfBookDetailsViewState
    extends State<BodyOfBookDetailsView>
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
    double width = MediaQuery.of(
      context,
    ).size.width;
    return Column(
      children: [
        SizedBox(height: 35),
        CustomBookCard(
          aspectRatio: 2.7 / 1.8,
          borderCircularRadius: 18,
          horizontalPadding: width * .25,
        ),
        SizedBox(height: 35),
        SelectedBookDetails(),
        SizedBox(height: 50),
        AppSlideAnimationText(
          padding: EdgeInsets.only(left: 30.0),
          alignment: Alignment.topLeft,
          slideAnimation: slideAnimation,
          text: 'You can also like',
          textStyle: MyStyles.textStyle14
              .copyWith(
                fontStyle: FontStyle.italic,
              ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
