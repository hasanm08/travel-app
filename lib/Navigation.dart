import 'package:flutter/material.dart';
import 'main.dart';
class Navigation extends StatelessWidget {
  final List<BottomNavigationBarItem> items=[];
  Navigation(){
    items.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.home,color: appTheme.primaryColor,),

            icon: Icon(Icons.home,color: Colors.black,),
            title: Text("Explore",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
        )
    );
    items.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite,color: appTheme.primaryColor,),

            icon: Icon(Icons.favorite,color: Colors.black,),
            title: Text("WishList",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
        )
    );items.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.local_offer,color: appTheme.primaryColor,),

            icon: Icon(Icons.local_offer,color: Colors.black,),
            title: Text("Deals",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
        )
    );items.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.notifications,color: appTheme.primaryColor,),

            icon: Icon(Icons.notifications,color: Colors.black,),
            title: Text("Notifications",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: items,type: BottomNavigationBarType.shifting, currentIndex: 0,);
  }
}
