import 'package:flutter/material.dart';
import 'package:my_app/ui/widget/custom_button.dart';
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
                CustomButton(
                  title: 'Get Started',
                  onPress: () {
                    Navigator.pushNamed(context, '/sign-up');
                    }, 
                  ),
              ],
            ),
          )
        ]
      )
    );
  }
}
