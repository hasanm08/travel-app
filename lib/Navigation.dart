import 'package:flutter/material.dart';
import 'WishList.dart';
import 'main.dart';

//Unused
class Navigation extends StatelessWidget {
  static int selindex;
  static List<BottomNavigationBarItem> items=[];
  
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
    );
    items.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.local_offer,color: appTheme.primaryColor,),
            icon: Icon(Icons.local_offer,color: Colors.black,),
            title: Text("Deals",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
        )
    );
    items.add(
        BottomNavigationBarItem(
          //backgroundColor: Colors.blue,
            activeIcon: Icon(Icons.notifications,color: appTheme.primaryColor,),
            icon: Icon(Icons.notifications,color: Colors.black,),
            title: Text("Notifications",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.shifting,
      currentIndex: selindex,
      elevation: 1.5,
      // ignore: non_constant_identifier_names
      // onTap: (SelectedIndex){
      //   if(selindex == SelectedIndex){
      //    print(selindex.toString()+"?"+SelectedIndex.toString());
      //    switch (SelectedIndex) {
      //     case 1:
      //       Navigator.push(context, MaterialPageRoute(
      //     builder: (context){
      //         return WishList();
      //     }
      //   ));
            
        //     break;
        //      case 0:
        //     Navigator.push(context, MaterialPageRoute(
        //   builder: (context){
        //       return HomeScreen();
        //   }
        // ));
            
        //     break;
        //      case 2:
        //     Navigator.push(context, MaterialPageRoute(
        //   builder: (context){
        //       return WishList();
        //   }
        // ));
            
        //     break;
        //      case 3:
        //     Navigator.push(context, MaterialPageRoute(
        //   builder: (context){
        //       return WishList();
        //   }
        // ));
            
        //     break;
     //   }

       // }
        
        //print(SelectedIndex);
        
      

     // }
      //,
      );
  }
  int index=0;
  
}
class NavigationTest extends StatefulWidget{
  @override
  _NavigationTest createState()=>_NavigationTest();
}
class _NavigationTest extends State<NavigationTest> {
  final List<BottomNavigationBarItem> items=[];
  int index=-1;
 Widget Navigation(){
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
    );
    items.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.local_offer,color: appTheme.primaryColor,),
            icon: Icon(Icons.local_offer,color: Colors.black,),
            title: Text("Deals",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
        )
    );
    items.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.notifications,color: appTheme.primaryColor,),
            icon: Icon(Icons.notifications,color: Colors.black,),
            title: Text("Notifications",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
        )
    );

    return BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.fixed,
      currentIndex: -1+1,
      elevation: 1.5,
      onTap: (sel){
      },
      // ignore: non_constant_identifier_names
     /* onTap: (SelectedIndex){
        while(true){
          print(SelectedIndex);

        }
        print(SelectedIndex);
        index=SelectedIndex;

        setState(() {
        });
      }*/
      /*,*/);

 }

  @override
  Widget build(BuildContext context) {
   return Navigation();
  }


}
