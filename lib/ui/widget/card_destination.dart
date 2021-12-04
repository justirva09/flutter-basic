import 'package:flutter/material.dart';
import 'package:my_app/shared/theme.dart';


class CardDestination extends StatelessWidget {

  final String title;
  final String subTitle;
  final String rating;
  final String thumbnail;

  const CardDestination({ Key? key, required this.title, required this.subTitle, required this.rating, required this.thumbnail }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(10),
      width: 327,
      height: 90,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(thumbnail)
              )
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5
                ),
                Text(
                  subTitle,
                  style: greyTextStyle.copyWith(
                    fontWeight: light
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
                    image: AssetImage('assets/icon_star.png')
                  )
                )
              ),
              Text(
                rating,
                style: blackTextStyle.copyWith(
                  fontWeight: medium
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
