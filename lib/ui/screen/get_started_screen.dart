import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
                fit: BoxFit.cover
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  )
                ),
                Container(
                  child: Text(
                    'Explore new  with us and let\nyourself get an amazing experience',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 220,
                  height: 55,
                  margin: const EdgeInsets.only(top: 50, bottom: 50),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)
                      )
                    ),
                    child: Text(
                      'Get Started',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium
                      )
                    )
                  )
                )
              ],
            ),
          )
        ]
      )
    );
  }
}
