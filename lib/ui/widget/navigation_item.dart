import 'package:flutter/material.dart';
import 'package:my_app/shared/theme.dart';

class NavigationItem extends StatelessWidget {
    // const NavigationItem({ Key? key }) : super(key: key);

    const NavigationItem({Key? key, required this.icon, this.isSelected = false}) : super(key: key);
    final String icon;
    final bool isSelected;

  @override
  Widget build(BuildContext context) {
     
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(icon)
              )
            )
          ),
          Container(
            height: 2,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: isSelected ? kPrimaryColor : kTransparentColor
            ),
          )
        ],
      );
  }
}
