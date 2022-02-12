import 'package:ecommerce_app/components/constance/color.dart';
import 'package:flutter/material.dart';

class CustomGeneralButton extends StatelessWidget {
  final String? text;
  const CustomGeneralButton({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          text!,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
