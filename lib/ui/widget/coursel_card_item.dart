import 'package:flutter/material.dart';
import 'package:my_app/shared/theme.dart';
import 'package:my_app/ui/screen/detail_screen.dart';

class CourselCardItem extends StatelessWidget {
  final String thumbnail;
  final String title;
  final String rating;
  final String subTitle;
  const CourselCardItem(
      {Key? key,
      required this.thumbnail,
      required this.title,
      required this.rating,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailScreen(),
          ),
        );
      },
      child: Container(
          width: 200,
          height: 323,
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.only(right: defaultMargin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: kWhiteColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 180,
                height: 220,
                margin: const EdgeInsets.only(bottom: 14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(image: AssetImage(thumbnail))),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 55,
                    height: 30,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(18)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          margin: const EdgeInsets.only(right: 2),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/icon_star.png'))),
                        ),
                        Text(
                          rating,
                          style: blackTextStyle.copyWith(fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      subTitle,
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
