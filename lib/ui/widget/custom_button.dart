import 'package:flutter/material.dart';
import 'package:my_app/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const CustomButton({ Key? key, required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 55,
      margin: const EdgeInsets.only(top: 50, bottom: 50),
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius)
          )
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium
          )
        )
      )
    );
  }
}