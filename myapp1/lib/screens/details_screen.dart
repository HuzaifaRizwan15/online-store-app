import 'package:flutter/material.dart';
import 'package:myapp1/color/color.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    required this.image,
    required this.proName,
    required this.desc,
    required this.price,
  });

  final String image;
  final String proName;
  final String desc;
  final String price;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, size: 28, color: Colors.black),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 110.0),
          child: Text('Product Detail'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(Icons.favorite_outline, size: 28),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  child: Image.asset(widget.image),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 100, // Adjust height as needed
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 255, 255, 255), // Light grey color
                    borderRadius:
                        BorderRadius.circular(12), // Circular border radius
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Align vertically center
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.proName,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            widget.desc,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[
                                  600], // Slightly darker grey for description
                            ),
                          ),
                        ],
                      ),
                      Text(
                        widget.price,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  height: 20,
                  child: Text(
                    "Color",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  height: 70,
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.purple,
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 68, 171, 254),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromARGB(255, 168, 168, 168),
                        ),
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Maecenas cursus magna vitae convallis congue. Vestibulum dignissim augue odio, congue rutrum magna gravida ac. Sed rhoncus eu arcu a tempus.",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: 100), // Add some space for the button at the bottom
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor, // Button color
                  ),
                  onPressed: () {
                    // Add to Cart functionality here
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
