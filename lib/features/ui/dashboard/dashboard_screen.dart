import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_app/features/ui/dashboard/widget/item_card.dart';
import 'package:interview_app/packages/common/config/config.dart';
import 'package:interview_app/packages/common/config/size_config.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({
    super.key,
  });

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: SizeConfig.screenHeight! * .3,
                decoration: const BoxDecoration(color: Colors.blue),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 60, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("\$22,625.64",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        letterSpacing: .5),
                                    fontSize: 24,
                                  )),
                              Text(
                                "Account Value",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      color: Colors.white, letterSpacing: .5),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text("0.97 %",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: .5),
                                              fontSize: 18,
                                            )),
                                        const Icon(
                                          Icons.arrow_upward_rounded,
                                          color: Colors.green,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Since last Purchase",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      color: Colors.white, letterSpacing: .5),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      indent: 30,
                      endIndent: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cash balance",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      color: Colors.white, letterSpacing: .5),
                                  fontSize: 14,
                                ),
                              ),
                              Row(
                                children: [
                                  Text("\$22,62",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                            letterSpacing: .5),
                                        fontSize: 24,
                                      )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Icons.info,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Metal Holdings",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      color: Colors.white, letterSpacing: .5),
                                  fontSize: 14,
                                ),
                              ),
                              Text("\$22,625.64",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        letterSpacing: .5),
                                    fontSize: 24,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: SizeConfig.screenHeight! * .2 + 40,
            right: 0,
            left: 0,
            child: Column(
              children: [
                ItemCard(
                  itemName: 'Gold',
                  itemOz: '11.500Oz',
                  itemPrice: '\$22,625.64',
                  itemPercent: '0.97%',
                  itemMetalPrice: '\$22,625.64',
                  itemPriceChange: '-0.4 %',
                  itemBgColor: Colors.amber.shade400,
                  itemColor: Colors.amber.shade600,
                ),
                ItemCard(
                  itemName: 'Silver',
                  itemOz: '11.500Oz',
                  itemPrice: '\$22,625.64',
                  itemPercent: '0.97%',
                  itemMetalPrice: '\$22,625.64',
                  itemPriceChange: '-0.4 %',
                  itemBgColor: Colors.grey.shade400,
                  itemColor: Colors.grey.shade600,
                ),
                ItemCard(
                  itemName: 'Platinum',
                  itemOz: '11.500Oz',
                  itemPrice: '\$22,625.64',
                  itemPercent: '0.97%',
                  itemMetalPrice: '\$22,625.64',
                  itemPriceChange: '-0.4 %',
                  itemBgColor: Colors.purple.shade400,
                  itemColor: Colors.purple.shade600,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      bottom: 20,
                    ),
                    child: Text(
                      "Do More with One Gold",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Colors.black, letterSpacing: .5),
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: black,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      elevation: 10,
      onTap: (value) {
        // Respond to item press.
      },
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Portfolio",
          icon: Icon(Icons.pie_chart),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.menu),
        ),
        BottomNavigationBarItem(
          label: "Price",
          icon: Icon(Icons.bar_chart_outlined),
        ),
        BottomNavigationBarItem(
          label: "Settings",
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}
