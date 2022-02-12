import 'package:ecommerce_app/components/widgets/custom_button.dart';
import 'package:ecommerce_app/components/widgets/custom_indictaors.dart';
import 'package:ecommerce_app/layout/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: 200,
          left: 160,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          right: 32,
          child: const Text(
            'SKIP',
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 14, color: Color(0xff898989)),
          ),
        ),
        const Positioned(
            left: 60,
            right: 60,
            bottom: 100,
            child: CustomGeneralButton(
              text: 'NEXT',
            )),
      ],
    );
  }
}
