import 'package:flutter/material.dart';
import 'package:my_app/shared/theme.dart';
import 'package:my_app/ui/widget/navigation_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kWhiteColor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              NavigationItem(icon: 'assets/icon_home.png', isSelected: true,),
              NavigationItem(icon: 'assets/icon_booking.png'),
              NavigationItem(icon: 'assets/icon_card.png'),
              NavigationItem(icon: 'assets/icon_settings.png'),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          Text('Main Screen'),
          bottomNavigation()
        ],
      )
    );
  }
}
