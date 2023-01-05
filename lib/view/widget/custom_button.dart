import 'package:car_wash_app/constant.dart';
import 'package:car_wash_app/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: primaryColor,
        padding: const EdgeInsets.all(2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),

        ),

      ),
      

      child: CustomText(
        text: text,
        color: Colors.white,
        fontSize: 14,
        alignment: Alignment.center,
      ),
    );
  }
}
