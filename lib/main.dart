import 'package:corsouel_slider/screen.dart';
import 'package:corsouel_slider/sliver/view/sliver_view.dart';
import 'package:corsouel_slider/staggerdview_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
      // initialRoute: 'sliver',
      routes: {
        // '/':(context) => Precticescreen(),
        // '/':(context) => Staggerdviewscreen(),
        '/':(context) => SliverScreen(),
      },
    ),
  );
}
