import 'package:flutter/material.dart';
import 'package:my_app/shared/theme.dart';
import 'package:my_app/ui/widget/card_destination.dart';
import 'package:my_app/ui/widget/coursel_card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        child: Row(
          children: [
            // kita pake expanded biar tidak ada overflow pada column dan ketika 
            // konten lebih dari parent akan otomatis kebawah
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Goog Evening,\nJustirva',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "How's your day?",
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light
                    )
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png')
                ),
              )
            )
          ],
        )
      );
    }

    Widget popularDestinationWrapper() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CourselCardItem(
                title: 'Lake Ciliwung', 
                subTitle: 'Jakarta', 
                thumbnail: 'assets/image_destination1.png', 
                rating: "4.8"
              ),
              CourselCardItem(
                title: 'Lake Pakuas', 
                subTitle: 'Kalimantan', 
                thumbnail: 'assets/image_destination2.png', 
                rating: "3.8"
              ),
              CourselCardItem(
                title: 'Lake Cisadane', 
                subTitle: 'Tangerang', 
                thumbnail: 'assets/image_destination3.png', 
                rating: "4.4"
              ),
            ],
          ),
        )
      );
    }

    Widget newDestinationWrapper() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold
              ),
            ),
           const SizedBox(
              height: 20,
            ),
            const CardDestination(
              thumbnail: 'assets/image_destination6.png',
              title: 'Danau Beratan', 
              subTitle: 'Tangerang', 
              rating: '5.6'
            ),
            const CardDestination(
              thumbnail: 'assets/image_destination7.png',
              title: 'Pulau Seribu', 
              subTitle: 'Tangerang', 
              rating: '2.4'
            ),
            const CardDestination(
              thumbnail: 'assets/image_destination8.png',
              title: 'Raja Ampat', 
              subTitle: 'Tangerang', 
              rating: '9.2'
            ),
            const CardDestination(
              thumbnail: 'assets/image_destination9.png',
              title: 'Papua Island', 
              subTitle: 'Tangerang', 
              rating: '8.4'
            ),
          ],
        ),
      );
    }


    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin
      ),
      child: ListView(
        children: [
          header(),
          popularDestinationWrapper(),
          newDestinationWrapper()
        ],
      ),
    );
  }
}
