import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp1/color/color.dart';
import 'package:myapp1/screens/Popular_product_screen.dart';
import 'package:myapp1/screens/all_products_screen.dart';
import 'package:myapp1/widget/product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 28, color: Colors.black),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 155.0),
          child: Container(
            child: Text('Home'),
          ),
        ),
        actions: [
          Icon(Icons.search, size: 28),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color.fromARGB(255, 243, 242, 242),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nike Air max 270",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Men's Shoes",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 209, 209, 209),
                              ),
                            ),
                            SizedBox(height: 45),
                            Text(
                              "\$290.00",
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 0),
                          child: OverflowBox(
                            maxWidth: 800,
                            maxHeight: 800,
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('Asset/image/Image.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AllProducts()),
                            );
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(fontSize: 18, color: primaryColor),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            // Handle tap for "All" category
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 40,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            "All",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 205, 205, 205),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            "Electronic",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 205, 205, 205),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            "Fashion",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 205, 205, 205),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            "Shoes",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 205, 205, 205),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            "Furniture",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          // Handle tap for "Electronic" category
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 205, 205, 205),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            "Electronic",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Products",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WishlistScreen()),
                          );
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 18,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductWidget(
                          proName: "Leather Woman Bag",
                          descName: "715 reviews",
                          rupees: "135.00",
                          image: 'Asset/image/bag.png',
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        ProductWidget(
                            proName: "Caps",
                            descName: "(379 reviews)",
                            rupees: '189.00',
                            image: 'Asset/image/cap.png'),
                        SizedBox(
                          width: 18,
                        ),
                        ProductWidget(
                            proName: "Fashionable Bags",
                            descName: "(379 reviews)",
                            rupees: '189.00',
                            image: 'Asset/image/bag.png'),
                        SizedBox(
                          width: 18,
                        ),
                        ProductWidget(
                            proName: "Wireless HeadPhone",
                            descName: "(379 reviews)",
                            rupees: '189.00',
                            image: 'Asset/image/headphone.png'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest Products",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 118, 118, 118)),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: double.infinity,
                        width: 100,
                        child: Image.asset('Asset/image/headphone.png'),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'HeadPhone Holder',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text('HeadPhone Holder'),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Container(
                          width: 50,
                          height: double.infinity,
                          child: Column(
                            children: [
                              Text("(1446)"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
