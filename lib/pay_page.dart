// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PayPage extends StatefulWidget {
  const PayPage({super.key});

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  var _currentIndex=0;

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
                        "Check Out",
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
                height: 32 * height,
              ),
              Container(
                width: 330 * width,
                height: 183 * height,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 296 * width,
                      height: 70 * height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffe5e5e5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Start Date",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "09-06-2021",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.calendar_month,
                            size: 32 * width,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9 * height,
                    ),
                    Container(
                      width: 296 * width,
                      height: 70 * height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffe5e5e5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "End Date",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "15-06-2021",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.calendar_month,
                            size: 32 * width,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 38 * height,
              ),
              Container(
                width: 329 * width,
                height: 38 * height,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Apply Coupon",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 31 * height,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26 * width),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Details",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4 * height,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 6 * height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Days",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "4",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7 * height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rent",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "5996",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7 * height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Additional Items",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "6400",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7 * height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Coupon Discount",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "396",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10 * height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "12000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 71 * height,
              ),
              Container(
                width: 330 * width,
                height: 64 * height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    "PAY",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
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
