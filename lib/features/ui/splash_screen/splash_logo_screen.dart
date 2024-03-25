// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_app/packages/common/config/config.dart';
import 'package:interview_app/packages/common/config/size_config.dart';
import 'package:interview_app/routes/router_path.dart';

class SplashLogoScreen extends StatefulWidget {
  const SplashLogoScreen({Key? key}) : super(key: key);

  @override
  _SplashLogoScreenState createState() => _SplashLogoScreenState();
}

class _SplashLogoScreenState extends State<SplashLogoScreen> {
  bool _isVisible = false;

  _SplashLogoScreenState() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      context.go(RouterPath.SPLASH_SCREEN);
    });

    Future.delayed(const Duration(milliseconds: 10), () {
      setState(() {
        _isVisible =
            true; // Now it is showing fade effect and navigating to Login page
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Theme.of(context).colorScheme.secondary, primary],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: _animatedLogo(),
    );
  }

  AnimatedOpacity _animatedLogo() {
    return AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0,
      duration: const Duration(milliseconds: 1200),
      child: SizedBox(
          height: 200,
          child: Center(
            child: Text(
              "App Name",
              style: GoogleFonts.cabin(fontSize: 30),
            ),
          )),
    );
  }
}
