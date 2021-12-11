import 'package:flutter/material.dart';
import 'package:my_app/shared/theme.dart';

class InterestsWidget extends StatelessWidget {
  final String title;
  const InterestsWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(
              right: 6,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: light,
            ),
          )
        ],
      ),
    );
  }
}
