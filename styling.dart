import 'package:flutter/material.dart';

class Styling{
   
   static const _textLargeSize =22.0;
   static const _textDefaultSize = 16.0;
   static final Color _textColorLarge = Colors.blue[300];
   static final Color _textColorDefault = Colors.black54;
   //static final String _fontname = 'Mans';
   static final String _fntnamed = 'Mans';
  static final headerLarge=TextStyle(
    // fontSize: 20.0,
    // color: Colors.black87,
    fontFamily:'Mans',
    fontSize: _textLargeSize,
    color: _textColorLarge,
  );

  static final textdefault = TextStyle(
    // fontSize: 16.0,
    // color: Colors.black38,
    fontSize: _textDefaultSize,
    color: _textColorDefault,
    fontFamily: _fntnamed,
  );

}