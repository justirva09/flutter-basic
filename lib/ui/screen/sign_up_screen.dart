import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {

    Widget title() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold
          ),
        ),
    );
  }

    Widget inputSection() {

      Widget FormText(label, placeHolder, {isPassword = false}) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                obscureText: isPassword,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: placeHolder,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor
                    )
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget buttonSubmit() {
        return Container(
            width: double.infinity,
            height: 55,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              },
              child: Text(
                'Get Started',
                style: whiteTextStyle.copyWith(
                  color: kWhiteColor,
                  fontWeight: medium,
                  fontSize: 18

                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius)
                )
              ),
            ),
          );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius
          )
        ),
        child: Column(
          children: [
            FormText('Full Name', 'Your full name'),
            FormText('Email', 'your@mail.com'),
            FormText('Password', 'your password', isPassword: true),
            FormText('Hobby', 'your hobby'),
            buttonSubmit()
          ],
        ),
      );
    }

    Widget tacButton() {
      return(
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 50,
            bottom: 73
          ),
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 16,
              decoration: TextDecoration.underline
            )
          ),
        )
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          children: [
            title(),
            inputSection(),
            tacButton()
          ]
        ),
      )
    );
  }
}
