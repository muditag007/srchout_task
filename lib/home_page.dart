// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:Mudit/desc_page.dart';
import 'package:Mudit/tile1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List cats = [
    "Adventure",
    'Sports',
    'Cruiser',
    'Tourist',
    'Bullet',
    'Kawasaki'
  ];

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
                height: 25 * height,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 36 * width,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'images/img1.jpg',
                        height: 50 * height,
                        width: 50 * height,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 14 * width,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Mudit Agrawal",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25 * height,
              ),
              Container(
                height: 60 * height,
                width: 324 * width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[400],
                      size: 30,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.transparent,
                      size: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25 * height,
              ),
              Container(
                height: 50 * height,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cats.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 8 * width,
                        right: 8 * width,
                      ),
                      child: Container(
                        width: 100 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.grey),
                          // color: Colors.blue,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          cats[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 38 * height,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "      Popular Items",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 18 * height,
              ),
              Container(
                height: 225 * height,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 8 * width,
                        right: 8 * width,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DescPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 143 * width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: 3),
                            // color: Colors.blue,
                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                // SizedBox(
                                //   height: 5 * height,
                                // ),
                                Expanded(
                                  child: Container(
                                    child: Image.asset(
                                      'images/img1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5 * height,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Meteore",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Royal Enfield",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10 * height,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "\$699 / day",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                // SizedBox(
                                //   height: 5 * height,
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 26 * height,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "      Recently Viewed",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 18 * height,
              ),
              Tile1(),
              Tile1(),
              Tile1(),
              Tile1(),
              Tile1(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: '',
      //     ),
      //   ],
      //   currentIndex: _currentIndex,
      //   selectedItemColor: Colors.black, // Change the selected icon color
      //   unselectedItemColor: Colors.grey, // Change the unselected icon color
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   type: BottomNavigationBarType.fixed, // Fix the position of each icon
      // ),
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
