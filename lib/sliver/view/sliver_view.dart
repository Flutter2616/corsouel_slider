import 'package:flutter/material.dart';

class SliverScreen extends StatefulWidget {
  const SliverScreen({super.key});

  @override
  State<SliverScreen> createState() => _SliverScreenState();
}

class _SliverScreenState extends State<SliverScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text(
                "Sliver view",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              backgroundColor: Colors.red.shade700,
              elevation: 0,
              floating: true,
              expandedHeight: 150,
              centerTitle: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 80,
                width: double.infinity,
                margin: EdgeInsets.all(8),
                color: Colors.red.shade100,
              );
            }, childCount: 15)),
            SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                      color: Colors.pink.shade100, margin: EdgeInsets.all(10));
                }, childCount: 15)),
          ],
        ),
      ),
    );
  }
}
