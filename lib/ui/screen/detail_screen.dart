import 'package:flutter/material.dart';
import 'package:my_app/shared/theme.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  Widget backgroundImage() {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image_destination1.png'))),
    );
  }

  Widget shadowBottom() {
    return Container(
      width: double.infinity,
      height: 214,
      margin: const EdgeInsets.only(top: 236),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        kWhiteColor.withOpacity(0),
        Colors.black.withOpacity(0.95)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }

  Widget contentDestinationPhotos(String image) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.only(top: 8, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        children: [
          // NOTE: EMBLEM
          Container(
            width: 108,
            height: 24,
            margin: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_emblem.png'))),
          ),

          // NOTE: TITLE
          Container(
            margin: EdgeInsets.only(top: 256),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Tangerang',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_star.png')))),
                    Text(
                      '4.5',
                      style: whiteTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                )
              ],
            ),
          ),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                  style: blackTextStyle.copyWith(height: 2),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4, // give a max value for elipsis line
                ),
                // NOTE PHOTOS
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Photos',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Row(
                  children: [
                    contentDestinationPhotos('assets/image_destination1.png'),
                    contentDestinationPhotos('assets/image_destination2.png'),
                    contentDestinationPhotos('assets/image_destination3.png'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [backgroundImage(), shadowBottom(), content()],
        ));
  }
}
