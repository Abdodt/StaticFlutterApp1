import 'dart:core' as prefix0;
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:myapp/models/location.dart';
import 'styling.dart';

class LocationDetail extends StatelessWidget
{
  final Location location;
  LocationDetail(this.location);

  @override
  
Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
        title:Text(location.name,
        style: TextStyle
        (
          textBaseline: TextBaseline.ideographic,
          color: Colors.black87,
        ),),
        backgroundColor: Colors.limeAccent[200],
           ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  _renderBody(context,location),
      )
    );
  }

  List<Widget> _renderBody(BuildContext context,Location location)
  {
    var result = List<Widget>();
    result.add(_bannerimage(location.url,170.0));
    result.addAll(_renderFacts(context,location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context,Location location)
  {
    var result = List<Widget>();
    for (var i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

Widget _sectionTitle(String text)
{
  return Container 
  ( padding: EdgeInsets.fromLTRB(18.0, 22.0, 18.0,0.0)  ,
    child:Text(text,
    textAlign: TextAlign.center,
     style: Styling.headerLarge,
     //style:TextStyle(   (One way to do this,Other way is above by making use of functions.)
    //   color: Colors.blueGrey[400],
    //   fontSize: 28.0,

    // ),
  ));
}

Widget _sectionText(String text)
{
  return Container( 
    padding: EdgeInsets.fromLTRB(24.0,6.0, 18.0, 8.0),
   child: Text(text,
  textAlign: TextAlign.left,
  style: Styling.textdefault,
  // style: TextStyle(
  //   color: Colors.black87,
  //   fontSize: 22.0,
  // ),
  ));
}

Widget _bannerimage(String url,double height)
{
  return Container(
    constraints: BoxConstraints.tightFor(height:height),//No matter the size the elements will be fixed inside.
    child: Image.network(url,fit:BoxFit.fitWidth),
  );
}


  // Widget _section(String title,Color color) //Using the underscore makes it a private function.
  // {
  //    return Container(
  //      decoration: BoxDecoration(
  //        color: color,
  //      ),
  //      child: Text(title),
  //    );
  // }

}