import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Precticescreen extends StatefulWidget {
  const Precticescreen({Key? key}) : super(key: key);

  @override
  State<Precticescreen> createState() => _PrecticescreenState();
}

class _PrecticescreenState extends State<Precticescreen> {
  List image = [
    "assets/i1.jpg",
    "assets/i2.jpg",
    "assets/i3.jpg",
    "assets/i4.jpg",
  ];
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: image
                    .map((e) => Image.asset(
                          "$e",
                          width: 400,
                          height: 400,
                          fit: BoxFit.cover,
                        ))
                    .toList(),
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  height: 400,
                  initialPage: 0,
                  autoPlay: true,
                  aspectRatio: 10,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  pageSnapping: true,
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  onPageChanged: (index, reason) {
                    setState(() {
                      pageindex = index;
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: image.asMap().entries.map((e) => Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CircleAvatar(
                        radius: 5,
                        backgroundColor:
                        pageindex == e.key ? Colors.red : Colors.grey),
                  )).toList())
            ],
          ),
        ),
      ),
    );
  }
}
