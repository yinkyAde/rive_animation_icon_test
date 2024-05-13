import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';
import 'package:rive_animation_icon_test/list_anim_rive_icons.dart';

import '../../constants.dart';

class HomeScreenNav extends StatefulWidget {
  const HomeScreenNav({Key? key}) : super(key: key);

  @override
  HomeScreenNavState createState() => HomeScreenNavState();
}

class HomeScreenNavState extends State<HomeScreenNav> {
  int selectedIndex = 0;

  List<Widget> listOfScreens = <Widget>[
    const ListAnimatedRiveIcons(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: bottomNavBarColor,
        body: listOfScreens.elementAt(selectedIndex),
        bottomNavigationBar: Container(
          height: Platform.isIOS ? 110 : 80,
          padding: const EdgeInsets.only(top: 0.0),
          child: NavigationBarTheme(
            data:  NavigationBarThemeData(
                indicatorColor: secondaryColor
            ),
            child: BottomNavigationBar(
              // selectedItemColor: secondaryColor,
              // unselectedItemColor:regularTextColor,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
               fixedColor: secondaryColor,
              currentIndex: selectedIndex,
              items: [
                BottomNavigationBarItem(
                  //backgroundColor:bottomNavBarColor,
                  icon: RiveAnimatedIcon(
                      riveIcon: RiveIcon.home2,
                      width: 30,
                      height: 30,
                      color: selectedIndex == 0 ? secondaryColor : mediumTextColor,
                      loopAnimation: true,
                      onTap: (){
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      onHover: (value){}
                  ),
                  activeIcon: RiveAnimatedIcon(
                      riveIcon: RiveIcon.home2,
                      width: 30,
                      height: 30,
                      color: selectedIndex == 0 ? secondaryColor : mediumTextColor,
                      loopAnimation: true,
                      onTap: (){
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      onHover: (value){}
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  //backgroundColor:bottomNavBarColor,
                  icon: RiveAnimatedIcon(
                      riveIcon: RiveIcon.search,
                      width: 30,
                      height: 30,
                      color: mediumTextColor,
                      loopAnimation: true,
                      onTap: (){
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      onHover: (value){}
                  ),
                  activeIcon: RiveAnimatedIcon(
                      riveIcon: RiveIcon.search,
                      width: 30,
                      height: 30,
                      color: mediumTextColor,
                      loopAnimation: true,
                      onTap: (){
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      onHover: (value){}
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  //backgroundColor:bottomNavBarColor,
                  icon: RiveAnimatedIcon(
                      riveIcon: RiveIcon.settings3,
                      width: 30,
                      height: 30,
                      color:  mediumTextColor,
                      loopAnimation: true,
                      onTap: (){
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      onHover: (value){}
                  ),
                  activeIcon: RiveAnimatedIcon(
                    riveIcon: RiveIcon.settings3,
                    width: 30,
                    height: 30,
                    color:  mediumTextColor,
                    loopAnimation: true,
                    onTap: (){
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  //backgroundColor:bottomNavBarColor,
                  icon: RiveAnimatedIcon(
                      riveIcon: RiveIcon.profile,
                      width: 30,
                      height: 30,
                      color:  mediumTextColor,
                      loopAnimation: true,
                      onTap: (){
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      onHover: (value){}
                  ),
                  activeIcon: RiveAnimatedIcon(
                    riveIcon: RiveIcon.profile,
                    width: 30,
                    height: 30,
                    color:  mediumTextColor,
                    loopAnimation: true,
                    onTap: (){
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                  ),
                  label: "",
                ),
                // BottomNavigationBarItem(
                //   backgroundColor: Colors.white,
                //   icon: SizedBox(
                //     height: 25,
                //     width: 25,
                //     child: CircleAvatar(
                //       child: Padding(
                //         padding: const EdgeInsets.all(4.0),
                //         child: Image.asset("assets/images/apple.png", color: Colors.white,  width: 22,height: 22,),
                //       ),
                //     ),
                //   ),
                //   activeIcon: SizedBox(
                //     height: 25,
                //     width: 25,
                //     child: CircleAvatar(
                //       child: Padding(
                //         padding: const EdgeInsets.all(4.0),
                //         child: Image.asset("assets/images/apple.png", color: Colors.white,  width: 22,height: 22,),
                //       ),
                //     ),
                //   ),
                //   label: "",
                // ),
              ],
            ),
          ),
        ));
  }
}
