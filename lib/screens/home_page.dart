import 'package:flutter/material.dart';
import 'package:one_page_app/constants/values.dart';

import '../constants/colors.dart';
import '../constants/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: myPrimaryColor,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: myPrimaryColor,
        elevation: 0,
        actions: const [
          Icon(Icons.shopping_bag_outlined),
          smallWidth,
          Padding(
            padding: EdgeInsets.only(
              right: 15.0,
              left: 8.0,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profiles/profile.jpg"),
              radius: 15.0,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultInsidePading),
        child: Column(children: [
          largeHeight,
          largeHeight,
          largeHeight,
          Container(
            height: size.height * 0.3,
            padding: const EdgeInsets.all(25.0),
            width: double.infinity,
            decoration: BoxDecoration(
                color: myPrimaryColorLight,
                borderRadius: BorderRadius.circular(defaultInsidePading2)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "OFFER",
                        style:
                            TextStyle(color: myGoldColor, letterSpacing: 8.0),
                      ),
                      smallestHeight,
                      const Text(
                        "40% Off",
                        style: TextStyle(color: myWhiteColor, fontSize: 30.0),
                      ),
                      smallestHeight,
                      Row(
                        children: const [
                          Flexible(
                            child: Text(
                              "In Hornor of World Health Day, We'd like to give you these amaizing offers.",
                              softWrap: true,
                              style: TextStyle(color: myWhiteColor),
                            ),
                          ),
                        ],
                      ),
                      smallHeight,
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: myGoldColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text(
                          "View Offers",
                          style: TextStyle(color: myPrimaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                smallWidth,
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/fruits.png'),
                        fit: BoxFit.cover),
                  )),
                ),
              ],
            ),
          ),
          largeHeight,
          smallHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recommended Fruits",
                style: TextStyle(color: myWhiteColor, fontSize: 17.0),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        color: myGoldColor,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: myGoldColor,
                    size: 15.0,
                  ),
                ],
              )
            ],
          ),
          largeHeight,
          smallHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              fruitItem('assets/images/pinepal.png', '5', 'Apple', '8, 000',
                  pinColor),
              largeWidth,
              fruitItem('assets/images/apples.png', '4.7', 'Apple', '25, 000',
                  appleColor)
            ],
          ),
        ]),
      ),
      bottomNavigationBar: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 2,
              color: myGoldColor,
            ),
          ),
          BottomNavigationBar(
            backgroundColor: myPrimaryColorLight,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: myGoldColor,
            unselectedItemColor: myGreyColor,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              myBottomNavItem(Icons.home_filled, "Home", 0),
              myBottomNavItem(Icons.search, "Search", 1),
              myBottomNavItem(Icons.favorite, "Fav", 2),
              myBottomNavItem(Icons.list_alt_rounded, "History", 3),
            ],
          ),
        ],
      ),
    );
  }
}
