import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traning_flutter/my_flutter_app_icons.dart';
import 'package:traning_flutter/screens/home_screen.dart';
import 'package:traning_flutter/models/bn_screen.dart';
import 'package:traning_flutter/screens/my_account_screen.dart';
import 'package:traning_flutter/screens/my_car_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List<BnScreen> _bnScreen = <BnScreen>[
    BnScreen(title: 'Home', widget: HomeScreen()),
    BnScreen(title: 'Car', widget: MyCarScreen()),
    BnScreen(title: 'Profile', widget: MyAccountScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set status bar color to transparent
    ));
    return Scaffold(
      backgroundColor: Color(0xFF333742),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/mnue.svg',
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
            ),
          ),
        ],
      ),
      body: _bnScreen[_currentIndex].widget,
      bottomNavigationBar: Container(
          height: 62,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            color: Color(0xFF454D5A),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _currentIndex == 0
                    ? Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 101,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Color(0xFF333742),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/home.svg',
                                    color: Colors.white,

                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    _bnScreen[_currentIndex].title,
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 0;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF454D5A),
                              elevation: 0,
                              primary: Colors.transparent,
                              foregroundColor: Colors.black12,
                            ),
                            child:   SvgPicture.asset(
                              'assets/icons/home.svg',
                              color: Colors.white,

                            ),
                          ),
                        ),
                      ),
                // Center(
                //         child: GestureDetector(
                //             onTap: () {
                //               setState(() {
                //                 _currentIndex = 0;
                //               });
                //             },
                //             child: Container(
                //               height: 40,
                //               width: 101,
                //               child: Icon(
                //                 Icons.home_filled,
                //                 color: Colors.white,
                //               ),
                //             ))),
                _currentIndex == 1
                    ? Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Color(0xFF333742),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/car.svg',
                                  color: Colors.white,

                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  _bnScreen[_currentIndex].title,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 1;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF454D5A),
                              elevation: 0,
                              primary: Colors.transparent,
                              foregroundColor: Colors.black12,
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/car.svg',
                              color: Colors.white,
                              // height: 18,
                              // width: 18,
                            ),
                          ),
                        ),
                      ),

                _currentIndex == 2
                    ? Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Color(0xFF333742),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/profile.svg',
                                  // height: 18,
                                  // width: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  _bnScreen[_currentIndex].title,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF454D5A),
                              elevation: 0,
                              primary: Colors.transparent,
                              foregroundColor: Colors.black12,
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/profile.svg',
                              color: Colors.white,

                            ),
                          ),
                        ),
                      ),
              ],
            ),
          )
          // BottomNavigationBar(
          //   currentIndex: _currentIndex,
          //   type: BottomNavigationBarType.fixed,
          //   showSelectedLabels: true,
          //   onTap: (int selectedItemIndex) {
          //     if (selectedItemIndex != 2) {
          //       setState(() {
          //         _currentIndex = selectedItemIndex;
          //       });
          //     }
          //   },
          //   selectedIconTheme: IconThemeData(color: Colors.white),
          //   showUnselectedLabels: false,
          //
          //   items: [
          //     BottomNavigationBarItem(
          //
          //         icon:
          //         Image(
          //           image: const AssetImage("assets/icons/piconfinder_icons_home_1564508.png"),
          //           height: 24,
          //           width: 24,
          //         ),
          //         label: ""),
          //     BottomNavigationBarItem(
          //
          //         icon: Image(
          //           image: const AssetImage("assets/icons/piconfinder_icons_home_1564508.png"),
          //           height: 24,
          //           width: 24,
          //         ),
          //         label: ""),
          //     BottomNavigationBarItem(
          //
          //         icon: Image(
          //           image: const AssetImage("assets/icons/piconfinder_icons_home_1564508.png"),
          //           height: 24,
          //           width: 24,
          //         ),
          //         label: ""),
          //
          //
          //   ],
          //   backgroundColor: Colors.white,
          // ),
          ),
    );
  }
}
