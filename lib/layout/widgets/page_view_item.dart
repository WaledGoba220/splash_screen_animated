import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? image;

  const PageViewItem(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 250,
        ),
        SizedBox(
            child: Image.asset(
          image!,
          height: 150,
        )),
        const SizedBox(
          height: 40,
        ),
        Text(
          title!,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xff2f2e41)),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subTitle!,
          style: const TextStyle(
              fontSize: 15, fontFamily: 'Poppins', color: Color(0xff7878fc)),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
