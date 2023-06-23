import 'package:flutter/material.dart';

import 'colors.dart';
import 'values.dart';

BottomNavigationBarItem myBottomNavItem(
    IconData icon, String itemLabel, int index) {
  return BottomNavigationBarItem(
      icon: Icon(icon, size: defaultIconSize), label: itemLabel);
}

Expanded fruitItem(
    String image, String rating, String title, String price, Color bgColor) {
  return Expanded(
    child: Column(
      children: [
        Container(
          height: 130.0,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(100.0),
              topRight: Radius.circular(100.0),
            ),
            color: bgColor,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: myBlackColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: myGoldColor,
                        size: 15.0,
                      ),
                      const SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        rating,
                        style: const TextStyle(
                            color: myWhiteColor, fontSize: 10.0),
                      )
                    ],
                  ),
                ]),
                smallestHeight,
                const Text(
                  "FRUIT",
                  style: TextStyle(
                      color: myGoldColor, letterSpacing: 5.0, fontSize: 10.0),
                ),
                smallestHeight,
                Text(
                  title,
                  style: const TextStyle(color: myWhiteColor, fontSize: 20.0),
                ),
                smallestHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tsh. $price",
                      style: const TextStyle(color: myGoldColor),
                    ),
                    const Text(
                      "per kg",
                      style: TextStyle(color: myGreyColor),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
