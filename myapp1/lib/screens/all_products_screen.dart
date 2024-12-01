import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/color/color.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 28, color: Colors.black)),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 125.0),
          child: Container(
            child: Text('Category'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search, size: 28),
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 240, 240, 240),
        padding: EdgeInsets.all(12),
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
              height: 22,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Icon(
                                Icons.shopping_bag,
                                color: const Color.fromARGB(255, 138, 138, 138),
                                size: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Icon(
                                Icons.watch,
                                size: 28,
                                color: Color.fromARGB(255, 126, 126, 126),
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Watch"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(child: Icon(Icons.storage)),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Shoes"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Image.asset(
                                'Asset/image/icon1.png',
                                width: 100, // Set the desired width
                                height: 100, // Set the desired height
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Image.asset(
                                'Asset/image/icon1.png',
                                width: 100, // Set the desired width
                                height: 100, // Set the desired height
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Image.asset(
                                'Asset/image/icon1.png',
                                width: 100, // Set the desired width
                                height: 100, // Set the desired height
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Image.asset(
                                'Asset/image/icon1.png',
                                width: 100, // Set the desired width
                                height: 100, // Set the desired height
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Image.asset(
                                'Asset/image/icon1.png',
                                width: 100, // Set the desired width
                                height: 100, // Set the desired height
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Image.asset(
                                'Asset/image/icon1.png',
                                width: 100, // Set the desired width
                                height: 100, // Set the desired height
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Image.asset(
                                'Asset/image/icon1.png',
                                width: 100, // Set the desired width
                                height: 100, // Set the desired height
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Image.asset(
                                'Asset/image/icon1.png',
                                width: 100, // Set the desired width
                                height: 100, // Set the desired height
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the column vertically
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 225, 225),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Image.asset(
                                'Asset/image/icon1.png',
                                width: 100, // Set the desired width
                                height: 100, // Set the desired height
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some space between the image and the text
                          Text("Bag"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
