import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_book_ailver_list_builder.dart';
import 'package:flutter/material.dart';
import 'app_slide_animation_text.dart';
import 'books_list_view_builder.dart';
import 'custom_abb_bar.dart';

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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 47),
              BooksListViewBuilder(),
              SizedBox(height: 49),
              AppSlideAnimationText(
                padding: EdgeInsets.only(
                  left: 30.0,
                ),
                alignment: Alignment.topLeft,
                slideAnimation: slideAnimation,
                text: 'Best Sellers',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        BestSellerBookAilverListBuilder(),
      ],
    );
  }
}
