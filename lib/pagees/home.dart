import 'package:flutter/material.dart';
import 'package:shop/support_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    'images/icons/dress.png',
    'images/icons/shoes.png',
    'images/icons/jacket.png',
    'images/icons/shert.png',
    'images/icons/sweter.png',
    'images/icons/sockes.png',
    'images/icons/shorts.png',
    'images/icons/panties.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 215, 151),
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("MAME Shop", style: Appwidget.FeildStyle()),
                    Text("Good deals today", style: Appwidget.lightstyle()),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'images/home.jpg',
                    height: 100,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Product",
                  hintStyle: Appwidget.lightstyle(),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.search, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories", style: Appwidget.h3()),
                Text("See all", style: Appwidget.lightstyle()),
              ],
            ),
            const SizedBox(height: 10),
            Row(children: [
              Container(
                  height: 130,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFfd6f3e),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Center(
                      child: Text("All",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)))),
              Expanded(
                child: Container(
                  height: 130,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryTile(image: categories[index]);
                    },
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All", style: Appwidget.h3()),
                Text("See all", style: Appwidget.lightstyle()),
              ],
            ),
            SizedBox(height: 20),
            Container(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      // padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/shorts1.png',
                            height: 100,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text("short", style: Appwidget.producStyle()),
                          Row(
                            children: [
                              Text(
                                "\$1000",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfd6f3e),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/shoes1.png',
                            height: 100,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text("shoes", style: Appwidget.producStyle()),
                          Row(
                            children: [
                              Text(
                                "\$500",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfd6f3e),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Image.asset(
                            'images/1.png',
                            height: 100,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text("sweter ", style: Appwidget.producStyle()),
                          Row(
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfd6f3e),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String image;

  const CategoryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 50, width: 50, fit: BoxFit.cover),
          SizedBox(
            height: 5,
          ),
          const SizedBox(height: 5),
          const Icon(
            Icons.arrow_forward,
          ),
        ],
      ),
    );
  }
}
