import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonuScreen extends StatelessWidget {
  const BonuScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/image_card.png',
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10)
            )
          ]
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Justirva',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png')
                    )
                  ),
                )
              ],
            )
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard()
          ],
        ),
      ),
    );
  }
}
