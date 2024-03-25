import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final String itemOz;
  final String itemPrice;
  final String itemPercent;
  final String itemMetalPrice;
  final String itemPriceChange;
  final Color itemBgColor;
  final Color itemColor;

  const ItemCard({
    super.key,
    required this.itemName,
    required this.itemOz,
    required this.itemPrice,
    required this.itemPercent,
    required this.itemMetalPrice,
    required this.itemPriceChange,
    required this.itemBgColor,
    required this.itemColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75))
          ],
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: itemBgColor.withOpacity(0.4),
                          radius: 30,
                          child: Icon(
                            Icons.grid_4x4,
                            size: 30,
                            color: itemColor,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemName,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: itemBgColor, letterSpacing: .5),
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            itemOz,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.black, letterSpacing: .5),
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          // "\$ 22,265.64",
                          itemPrice,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.black, letterSpacing: .5),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          itemPercent,
                          textAlign: TextAlign.right,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.black, letterSpacing: .5),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Metal Price",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.grey, letterSpacing: .5),
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        itemMetalPrice,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.black, letterSpacing: .5),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Change",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.grey, letterSpacing: .5),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        itemPriceChange,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.red, letterSpacing: .5),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
