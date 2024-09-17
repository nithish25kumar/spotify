import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify2/common/widgets/appbar/app_bar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        title: SvgPicture.asset('assets/vectors/spotify_logo.svg',
            height: 40, width: 40),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
