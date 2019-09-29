//import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Colors, Column, FloatingActionButton, Icon, Icons, Key, MainAxisAlignment, MaterialApp, Scaffold, State, StatefulWidget, StatelessWidget, Text, Theme, ThemeData, Widget, runApp;
import 'package:flutter/material.dart';
import 'location_detail.dart';
import 'models/location.dart';
import 'Mocks/mock_location.dart';



void main(){
      final Location mocklocation = Mocklocation.FetchAny();
    return runApp(MaterialApp(
      home: LocationDetail((mocklocation)),
    ),
  );
}
