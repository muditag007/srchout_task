// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tile1 extends StatefulWidget {
  const Tile1({super.key});

  @override
  State<Tile1> createState() => _Tile1State();
}

class _Tile1State extends State<Tile1> {
  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        812;
    double width = MediaQuery.of(context).size.width / 375;
    return Padding(
      padding: EdgeInsets.only(bottom: 15 * height),
      child: Container(
        height: 50 * height,
        width: 342 * width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(15),
          // color: Colors.blue,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20 * width,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/img1.jpg',
                  height: 35 * height,
                  width: 45 * width,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10 * width,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hayabusa",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "\$2000 / per day",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              Spacer(),
              Container(
                height: 20 * height,
                width: 70 * width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "Available",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
