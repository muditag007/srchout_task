// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Mudit/pay_page.dart';
import 'package:Mudit/tile1.dart';
import 'package:flutter/material.dart';

class DescPage extends StatefulWidget {
  const DescPage({super.key});

  @override
  State<DescPage> createState() => _DescPageState();
}

class _DescPageState extends State<DescPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        812;
    double width = MediaQuery.of(context).size.width / 375;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              SizedBox(
                height: 30 * height,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20 * width,
                  ),
                  Container(
                    height: 30 * height,
                    width: 30 * height,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.arrow_back),
                  ),
                  Spacer(),
                  Container(
                    width: 280 * width,
                    height: 60 * height,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Bike Details",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20 * width,
                  ),
                ],
              ),
              SizedBox(
                height: 33 * height,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 11 * width,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Indian",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Scout Bobber",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 30 * height,
                        ),
                        Container(
                          width: 136 * width,
                          height: 63 * height,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 11 * width),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Category",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "Cruiser",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30 * height,
                        ),
                        Container(
                          width: 136 * width,
                          height: 63 * height,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 11 * width),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Displacement",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "1100 cc",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6 * width,
                  ),
                  Container(
                    height: 280 * height,
                    width: 200 * width,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'images/x.png',
                    ),
                  ),
                  SizedBox(
                    width: 20 * width,
                  )
                ],
              ),
              SizedBox(
                height: 15 * height,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 11 * width,
                  ),
                  Container(
                    width: 136 * width,
                    height: 63 * height,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 11 * width),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Max. Speed",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "124 km/hr",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5 * width,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PayPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 200 * width,
                      height: 63 * height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rent",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "1499/ per day",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 36 * height,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 21 * width),
                  child: Text(
                    "Add Items",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15 * height,
              ),
              Tile1(),
              Tile1(),
              Tile1(),
              Tile1(),
              Tile1(),
              Tile1(),
              Tile1(),
              Tile1(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60, // Adjust the height of the bottom bar
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(0, Icons.home),
            _buildNavItem(1, Icons.map_rounded),
            _buildNavItem(2, Icons.wallet_rounded),
            _buildNavItem(3, Icons.settings),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        width: 60, // Adjust the width of each icon container
        height: 60, // Adjust the height of each icon container
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          icon,
          color: _currentIndex == index ? Colors.black : Colors.grey,
          size: 30,
        ),
      ),
    );
  }
}
