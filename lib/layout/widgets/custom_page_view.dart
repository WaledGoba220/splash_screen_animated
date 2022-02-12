import 'package:ecommerce_app/layout/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, @required this.pageController})
      : super(key: key);

  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
            title: 'E Shopping',
            subTitle: 'Explore top organic fruits & grap them',
            image: 'assets/images/onboarding1.png'),
        PageViewItem(
            title: 'Delivery on the way',
            subTitle: 'get your order by speed delivery',
            image: 'assets/images/onboarding2.png'),
        PageViewItem(
            title: 'Delivery Arrived',
            subTitle: 'Order is arrived at your Place',
            image: 'assets/images/onboarding3.png'),
      ],
    );
  }
}
