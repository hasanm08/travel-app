import 'package:flutter/material.dart';

import 'main.dart';
class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
      body: Stack(children: <Widget>[
        ClipPath(
          clipper: Clipper08(),
          child:
          Container(
            height: height * .35, //400
            //color: Colors.tealAccent,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  appTheme.primaryColor, appTheme.primaryColor.withAlpha(240)
                ])
            ),

          ),
        )
        ,
        Card(
          //child: Textf,
        ),
        Center(child: Text("Will be here Soon",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),),)
      ],),
    );
  }

}