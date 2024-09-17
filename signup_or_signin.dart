import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify2/common/helpers/is_dark_mode.dart';
import 'package:spotify2/common/widgets/appbar/app_bar.dart';
import 'package:spotify2/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify2/core/theme/app_colors.dart';
import 'package:spotify2/presentation/auth/pages/sign_up.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  get height => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset('assets/vectors/top_pattern.svg'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset('assets/vectors/bottom_pattern.svg'),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset('assets/images/auth_bg.png')),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/vectors/spotify_logo.svg'),
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      'Enjoy listening to Music ',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    const Text(
                      'Spotify is a digital music streaming service that provides instant access to its vast online library of music . ',
                      style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: BasicAppButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const SignUpPage()));
                              },
                              title: 'Register',
                              height: height),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: context.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
