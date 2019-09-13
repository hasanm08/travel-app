import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Navigation.dart';
import'SecondPage.dart';

double width ;
double height ;
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    theme: appTheme,
    title: "hasanm08 Flutter Project",
  ));
}
 ThemeData appTheme=ThemeData(
  primaryColor:Colors.purple //Colors.tealAccent,
     , secondaryHeaderColor: Colors.blue //Colors.teal
  // fontFamily:
);

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    width = MediaQuery.of(context).size.width;
     height = MediaQuery.of(context).size.height;
    double h=height*0.10;
    double w=width*0.15;
    return Scaffold(
      bottomNavigationBar: Navigation(),
      floatingActionButton: FloatingActionButton(onPressed: (){showDialog(context: context,builder: (context){
        return  AlertDialog(
          title: Text("More Info :"),
          content:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
              FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(
                  height: h,
                  width: w,
                  child: RaisedButton(
                    child: Image.asset(
                        'assets/gmail.png'),
                    shape: StadiumBorder(),
                    color: Colors.white,
                    onPressed: () async {
                      const url = 'mailto:hasanmahani08@gmail.com?subject=I am using your flutter project so';
                      // const url = 'https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&to=hasanmahani08@gmail.com&su=I+am+using+MIN+pa08+so&ui=2&tf=1';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(
                  height: h,
                  width: w,

                  child: RaisedButton(
                    child: Image.asset(
                        'assets/instagram.png'),
                    shape: StadiumBorder(),
                    color: Colors.white,
                    onPressed: () async {
                      const url = 'https://www.instagram.com/hasanm108/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(
                  height: h,
                  width: w,

                  child: RaisedButton(
                    child: Image.asset(
                        'assets/telegram.png'),
                    shape: StadiumBorder(),
                    color: Colors.white,
                    onPressed: () async {
                      const url = 'https://t.me/hasanm08';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(
                  height: h,
                  width: w,

                  child: RaisedButton(
                    child: Image.asset(
                        'assets/whatsapp.png'),
                    shape: StadiumBorder(),
                    color: Colors.white,
                    onPressed: () async {
                      const url = 'https://wa.me/+989910187797';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },

                  ),
                ),
              ),
            ],

          )
          ,
        );
      }
        ,)
      ;},child: Icon(Icons.info_outline),backgroundColor: appTheme.primaryColor.withOpacity(.5),),

      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            HomeTop(),
            HomeDown,
            HomeDown
          ],
        ),
      ) ,


    );
  }

}

var selectedloc=0;
List<String> locs=['Kerman (KER)','Mashhad (MASH)'];
class HomeTop extends StatefulWidget{
  @override
  _HomeTop createState()=>_HomeTop();
}
class _HomeTop extends State<HomeTop>{
  var isFlightSelected=true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: Clipper08(),
          child:
          Container(
            height: height*.59,//400
            //color: Colors.tealAccent,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                appTheme.primaryColor, appTheme.secondaryHeaderColor
              ])
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: height/16,),
                Padding(padding: EdgeInsets.all(16.0),
                 child:
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on,color: Colors.white,),
                      SizedBox(width: width*0.05,),
                      PopupMenuButton(
                         onSelected: (index){
                           setState(() {
                             selectedloc=index;

                           });
                         }
                         ,child:
                        Row(
                          children: <Widget>[
                            Text(locs[selectedloc],style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                            ),
                            Icon(Icons.keyboard_arrow_down,color: Colors.white,)
                          ],
                        ),
                      itemBuilder: (BuildContext context){return <PopupMenuItem<int>>[
                        PopupMenuItem(
                          child:
                          Text(locs[0],style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                          ),value: 0,
                        ),
                        PopupMenuItem(
                          child:
                          Text(locs[1],style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                          ),value: 1,
                        )

                      ];},),
                      Spacer(),
                      Icon(Icons.settings,color: Colors.white,)

                    ],
                  )
                  ,),
                SizedBox(height: height/16,),
                Text('Where Would  \n you want to go',style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,

                ),textAlign: TextAlign.center,),
                SizedBox(height: height*0.0375),
                Padding(padding:EdgeInsets.symmetric(horizontal: 32.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: TextField(
                    controller: TextEditingController(text: locs[1]),
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,

                    ),
                    cursorColor: appTheme.primaryColor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 32,vertical: 13),
                      suffixIcon: Material(
                        child: InkWell(child: Icon(Icons.search,color: Colors.black,),onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context){return SecondPage();} ));
                        },),
                        elevation: 2.0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      )
                    ),
                  ),
                ),),
                SizedBox(height: height*0.025,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(child: Choice08(icon: Icons.flight_takeoff,text: "Flights",Selected:isFlightSelected),
                    onTap:(){
                      setState(() {
                        isFlightSelected=true;
                      });
                    },),
                  SizedBox(width: width*0.055,),
                    InkWell(child: Choice08(icon: Icons.hotel,text: "Hotels",Selected:! isFlightSelected),
                    onTap: (){setState(() {
                      isFlightSelected=false;
                    })
                    ;},)


          ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Clipper08 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path=Path();
    path.lineTo(0.0, size.height);
   // path.lineTo(size.width, 0.0);
    // ignore: non_constant_identifier_names
    var End=Offset(size.width/2, size.height-30.0);
    // ignore: non_constant_identifier_names
    var Control=Offset(size.width/4,size.height-50.0);

    path.quadraticBezierTo(Control.dx, Control.dy, End.dx, End.dy);
    // ignore: non_constant_identifier_names
    var End2=Offset(size.width, size.height-80.0);
    // ignore: non_constant_identifier_names
    var Control2=Offset(size.width*.75,size.height-10.0);

    path.quadraticBezierTo(Control2.dx, Control2.dy, End2.dx, End2.dy);


    //path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
class Choice08 extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool Selected;
  Choice08({this.icon,this.text,this.Selected});
  @override
  _Choice08State createState() => _Choice08State();
}

class _Choice08State extends State<Choice08> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
      decoration:widget.Selected?
      BoxDecoration(
        color: Colors.white.withOpacity(.30),
        borderRadius: BorderRadius.all(Radius.circular(20)),

      ):null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          Icon(widget.icon,size: 20,color: Colors.white,),
          SizedBox(width: width*.025,),
          Text(widget.text,style: TextStyle(
            color: Colors.white,
            fontSize: 16
          ),
          )
        ],
      ),
    );
  }
}
var viewallstyle=TextStyle(
    fontSize: 14,
  color: appTheme.primaryColor//Colors.teal
);
var HomeDown=Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[SizedBox(width: width*0.05,),
            Text("Curently Watched items",style: TextStyle(
                color: Colors.black,
                fontSize: 16
            ),
            ),Spacer(),
            Text("VIEW ALL",style: viewallstyle
            )

          ],
        ),
      ),
      Container(
        height: height*.25,
        child:
        ListView(
          scrollDirection: Axis.horizontal,
          children:Cities
        ),
      )
    ],
);
List<City> Cities=[
  City(image:"assets/Kerman.png",name: "Kerman",monthyear: "Far 1399",oldprice: "258500",newprice: "150000",discount: "58",),
  City(image:"assets/Mashhad.png",name: "Mashhad",monthyear: "Far 1399",oldprice: "258500",newprice: "150000",discount: "58",),
  City(image:"assets/Tehran.png",name: "Tehran",monthyear: "Far 1399",oldprice: "258500",newprice: "150000",discount: "58",),

];
class City extends StatelessWidget{
  final String image,monthyear,oldprice;
  final String name,discount,newprice;

  const City({Key key, this.image, this.monthyear, this.oldprice, this.name, this.discount, this.newprice}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      Column(

        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child:Stack(

                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 5),

                     child: Container(height: height*.2,
                         width: width*.45,
                         child: Image.asset(image,fit: BoxFit.cover,)),

                   ),Positioned(
                     height:60 ,
                     width: width*.5,
                     left: 5,
                     bottom: 0,
                     child: Container(
                       decoration: BoxDecoration(
                           gradient: LinearGradient(colors: [
                             Colors.black,Colors.black12
                           ],
                               begin: Alignment.bottomCenter,
                               end: Alignment.topCenter)
                       ),

                     ),
                   ),
                   Positioned(child:
                    Row(
                     mainAxisSize: MainAxisSize.max,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                        //decoration: BoxDecoration(
                         //   shape: BoxShape.rectangle,
                         //   color: Colors.black.withOpacity(.4),
                          //  borderRadius: BorderRadius.all(Radius.circular(10))
                       // ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(name,style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                            ),
                            Text(monthyear,style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),
                            ),
                          ],
                        ),
                      ),
                       Container(
                         padding: EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                         decoration: BoxDecoration(
                           shape: BoxShape.rectangle,
                           color: Colors.white,
                           borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                         child: Text(discount+"%",style: TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: Colors.black
                         ),),
                       )

                     ],
                   ),
                     left: 10,
                     bottom: 10,
                     right: 15,
                   )
          ],

    )
          ),
         Row(
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text("\$ "+'${(newprice)}'
                 ,style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic
                 )),
             SizedBox(width: width*0.08,),
             Text("\$ "+'${(oldprice)}'
                 ,style: TextStyle(
                     color: Colors.black87,
                     fontWeight: FontWeight.w400,
                     fontStyle: FontStyle.italic
                 )),
           ],
         )

        ],
      );
  }

}