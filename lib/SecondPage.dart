import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutvideo/main.dart' as prefix0;
import 'main.dart';

final Color discountBackground = prefix0.appTheme.primaryColor;
final Color flightColor = prefix0.appTheme.primaryColor;
final Color chipBackground = prefix0.appTheme.secondaryHeaderColor.withOpacity(.2);
final Color BorderColor = prefix0.appTheme.primaryColor.withAlpha(100);
String Fromlocation;
String Tolocation;
class SecondPage extends StatelessWidget{
  String Fromloc;
  String Toloc;
  SecondPage({this.Fromloc,this.Toloc});

  @override
  Widget build(BuildContext context) {
    Fromlocation=Fromloc;
    Tolocation=Toloc;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
            Navigator.pop(context);
          },),
          elevation: 0.0,
          centerTitle: true,
          title: Text('Search Result',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),),
        ),
        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              StackTop(), StackDown()
            ],),
        )

    );
  }

}

class StackDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16),
        child:

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Best Deals for Next 6 Months',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20
                )),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                FlightCard(Date: "01 Far 1399",
                  PercentOff: "34",
                  Price: "500",
                  Rating: 3.5,
                  FlightTo: "Rafsanjani",
                  OldPrice: "999",),
                FlightCard(Date: "02 Esf 1398",
                  PercentOff: "45",
                  Price: "600",
                  Rating: 5,
                  FlightTo: "Rafsanjani",
                  OldPrice: "1000",),
                FlightCard(Date: "01 Far 1399",
                  PercentOff: "34",
                  Price: "300",
                  Rating: 3.5,
                  FlightTo: "Rafsanjani",
                  OldPrice: "999",),
                FlightCard(Date: "02 Esf 1398",
                  PercentOff: "45",
                  Price: "700",
                  Rating: 5,
                  FlightTo: "Rafsanjani",
                  OldPrice: "1000",),

              ],
            )

          ],
        )
    );
  }
}

class FlightCard extends StatelessWidget {
  String Price;
  String FlightTo;
  String PercentOff;
  String Date;
  double Rating;
  String OldPrice;

  FlightCard({this.Date, this.FlightTo, this.PercentOff, this.Price, this.Rating, this.OldPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Stack(
          children: <Widget>[
            Container(
              //height: prefix0.height/6,
              width: prefix0.width * .8,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.lerp(
                        Radius.elliptical(10, 20), Radius.circular(20), 2)),
                border: Border.all(color: BorderColor),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(Price + '\$', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: prefix0.width * .02,),
                      Text(OldPrice + '\$', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: prefix0.height * .03,),
                  Wrap(
                    spacing: 5.0,
                    runSpacing: -5.0,
                    children: <Widget>[
                      Tag(label: Date,
                        avatar: Icon(Icons.calendar_today, size: 18,),),
                      Tag(label: FlightTo,
                        avatar: Icon(Icons.flight_takeoff, size: 18),),
                      Tag(label: Rating.toString(),
                        avatar: Icon(Icons.star, size: 18),),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: prefix0.height * .025,
              right: 15,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                width: prefix0.width * .09,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: discountBackground.withOpacity(.2)
                ),
                child: Center(
                  child: Text(PercentOff + '%', style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: discountBackground
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}

class Tag extends StatelessWidget {
  String label;
  Widget avatar;

  Tag({this.avatar, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawChip(
        label: Text(label,),
        labelStyle: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 8, color: Colors.black),
        avatar: avatar,
        backgroundColor: chipBackground,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),),
    );
  }

}

class StackTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   Key From;
   Key To;
    return Material(
      elevation: 0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Clipper08(),
            child:
            Container(
              height: height * .272, //400
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  appTheme.primaryColor, appTheme.primaryColor.withAlpha(240)
                ],
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: prefix0.height * .04,),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                margin: EdgeInsets.symmetric(horizontal: prefix0.height * .035),
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(prefix0.height * .035),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(/*prefix0.locs[0]*/ Fromlocation+
                               /* ' Beauty and old place */'\n (City name Can have any lentgh)',
                              style: TextStyle(
                                  fontSize: 16.0
                              ), key: From,
                            ),
                            Divider(color: Colors.black12,
                              height: prefix0.height * .04,),
                            Text(/*prefix0.locs[1]*/Tolocation /*+ ' Imam reza Holy Shrine'*/,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold
                              ),
                              key: To,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Expanded(flex: 1,
                          child: IconButton(
                              icon: Icon(Icons.import_export, color: Colors
                                  .black, size: prefix0.height * .07,),
                              onPressed: () {
                                // String temp;
                                // temp=From.
                                // TODO Swap To And From texts
                              }))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
