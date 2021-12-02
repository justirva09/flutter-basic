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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  )
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 41),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: whiteTextStyle.copyWith(
                      fontWeight: light                    
                    ),
                  ),
                  Text(
                    'IDR 280.000.000',
                    style: whiteTextStyle.copyWith(
                      fontSize: 26,
                      fontWeight: medium
                    ),
                  )
                ],
              )
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              'Bonus Page',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            )
          ],
        )
      );
    }

    Widget tacButton() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        width: 220,
        height: 55,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius)
            )
          ),
          child: Text(
            'Start Fly Now',
            style: whiteTextStyle.copyWith(
              color: kWhiteColor,
              fontWeight: medium,
              fontSize: 18
            ),
          ),
        ),
      );
    }


    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            tacButton()
          ],
        ),
      ),
    );
  }
}
