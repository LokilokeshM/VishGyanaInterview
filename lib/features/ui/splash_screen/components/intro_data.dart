// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../../../packages/common/config/config.dart';

class SplashScreenData extends StatelessWidget {
  const SplashScreenData(
      {super.key, this.introImage, this.headText, this.descText});
  final String? introImage, headText, descText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
            image: NetworkImage(introImage ?? ""),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height / 2),
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Text(
            headText ?? "",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Text(
            descText ?? "",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
