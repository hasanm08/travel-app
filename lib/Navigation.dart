import 'package:flutter/material.dart';
import 'main.dart';

//Unused
// ignore: must_be_immutable
class Navigation extends StatelessWidget {
  static int? selindex;
  static List<BottomNavigationBarItem> items = [];

  Navigation() {
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.home,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        label: "Explore"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.favorite,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.favorite,
          color: Colors.black,
        ),
        label: "WishList"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.local_offer,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.local_offer,
          color: Colors.black,
        ),
        label: "Deals"));
    items.add(BottomNavigationBarItem(
        //backgroundColor: Colors.blue,
        activeIcon: Icon(
          Icons.notifications,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        label: "Notifications"));
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.shifting,
      selectedLabelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
      unselectedLabelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
      currentIndex: selindex!,
      elevation: 1.5,
    );
  }

  int index = 0;
}

class NavigationTest extends StatefulWidget {
  @override
  _NavigationTest createState() => _NavigationTest();
}

class _NavigationTest extends State<NavigationTest> {
  final List<BottomNavigationBarItem> items = [];
  int index = -1;
  Widget navigation() {
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.home,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        label: "Explore"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.favorite,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.favorite,
          color: Colors.black,
        ),
        label: "WishList"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.local_offer,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.local_offer,
          color: Colors.black,
        ),
        label: "Deals"));
    items.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.notifications,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        label: "Notifications"));

    return BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.fixed,
      currentIndex: -1 + 1,
      elevation: 1.5,
      onTap: (sel) {},
      selectedLabelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
      unselectedLabelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Navigation();
  }
}
