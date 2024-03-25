// Flutter imports:
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Project imports:

import 'package:google_fonts/google_fonts.dart';
import 'package:interview_app/packages/common/config/size_config.dart';
import 'package:interview_app/routes/router_path.dart';
import '../../../packages/common/config/config.dart';
import 'components/clear_default_button.dart';

List<Map<String, String>> introData = [
  {
    'headText': 'Heading 1',
    'descText': "You can write your own description",
  },
  {
    'headText': 'Heading 2',
    'descText': "You can write your own description",
  },
  {
    'headText': 'Heading 3',
    'descText': "You can write your own description",
  },
];

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(
          color: white,
          // image: const DecorationImage(
          //     image: NetworkImage(
          //         "https://images.pexels.com/photos/3302537/pexels-photo-3302537.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),

          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.1, 0.4, 0.7, 0.9],
            colors: [
              Colors.grey.shade100,
              Colors.grey.shade400,
              Colors.grey.shade700,
              Colors.black,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 600.0,
                alignment: Alignment.center,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    ...introData.map(
                      (e) => Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 100,
                            right: 10,
                            left: 10,
                            child: Center(
                              child: Text(
                                e["headText"] ?? "",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.cabin(
                                    fontSize: 24,
                                    color: white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            right: 20,
                            left: 20,
                            child: Text(
                              e["descText"] ?? "",
                              style: GoogleFonts.rubik(
                                  fontSize: 20,
                                  color: white,
                                  fontWeight: FontWeight.w200),
                              maxLines: 2,
                              softWrap: true,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              Expanded(
                child: Row(
                  children: [
                    ClearDefaultButton(
                        name: 'Home',
                        press: () {
                          context.push(RouterPath.DASHBOARD);
                        }),
                    const SizedBox(
                      width: 5,
                    ),
                    ClearDefaultButton(
                        name: 'Routes',
                        press: () {
                          context.push(RouterPath.ROUTES);
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
