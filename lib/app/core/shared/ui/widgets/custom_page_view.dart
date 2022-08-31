import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../_design_system/widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import '../../../../modules/feed/presentation/router/feed_router.dart';
import '../controllers/custom_bottom_navigation_bar_controller.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  Widget build(BuildContext context) {
    final CustomBottomNavigationBarController controller =
        GetIt.I.get<CustomBottomNavigationBarController>();
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller.pageController,
      children: [
        const FeedRouter(),
        Scaffold(
          body: const Center(
            child: Text('Search'),
          ),
          bottomNavigationBar: ValueListenableBuilder<int>(
            valueListenable: controller,
            builder: (context, value, _) {
              return CustomBottomNavigationBar(
                currentIndex: value,
                onTap: (value) => controller.changePage(value),
              );
            },
          ),
        ),
        Container(),
        Scaffold(
          body: const Center(
            child: Text('Profile'),
          ),
          bottomNavigationBar: ValueListenableBuilder<int>(
            valueListenable: controller,
            builder: (context, value, _) {
              return CustomBottomNavigationBar(
                currentIndex: value,
                onTap: (value) => controller.changePage(value),
              );
            },
          ),
        ),
        Scaffold(
          body: const Center(
            child: Text('More'),
          ),
          bottomNavigationBar: ValueListenableBuilder<int>(
            valueListenable: controller,
            builder: (context, value, _) {
              return CustomBottomNavigationBar(
                currentIndex: value,
                onTap: (value) => controller.changePage(value),
              );
            },
          ),
        ),
      ],
    );
  }
}
