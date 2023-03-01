import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_clippers/custom_clipper_no1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // No 1 Clipper
        Expanded(
          flex: 2,
          child: ClipPath(
            clipper: MyCustomClipperNo1(),
            child: Container(width: double.infinity, color: Colors.amber),
          ),
        ),
        const Spacer(),
        // No 2 Clipper
        Expanded(
          flex: 2,
          child: ClipPath(
            clipper: MyCustomClipperNo2(),
            child: Container(width: double.infinity, color: Colors.amber),
          ),
        ),
        const Spacer(),
        // No 3 Clipper
        Expanded(
          flex: 2,
          child: ClipPath(
            clipper: MyCustomClipperNo3(),
            child: Container(width: double.infinity, color: Colors.amber),
          ),
        )
      ],
    ));
  }
}
