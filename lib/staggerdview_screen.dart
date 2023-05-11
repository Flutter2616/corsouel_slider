import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Staggerdviewscreen extends StatefulWidget {
  const Staggerdviewscreen({Key? key}) : super(key: key);

  @override
  State<Staggerdviewscreen> createState() => _StaggerdviewscreenState();
}

class _StaggerdviewscreenState extends State<Staggerdviewscreen> {
  List image = [
    "assets/i1.jpg",
    "assets/i2.jpg",
    "assets/i3.jpg",
    "assets/i4.jpg",
    "assets/i1.jpg",
    "assets/i2.jpg",
    "assets/i3.jpg",
    "assets/i4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text("StaggerdView Screen",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20))),
          body: MasonryGridView.builder(
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),itemCount: image.length,scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset("${image[index]}"),
              );
            },
          )),
    );
  }
}
