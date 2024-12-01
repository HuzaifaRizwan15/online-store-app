import 'package:flutter/material.dart';
import 'package:myapp1/Data/list.dart';
import 'package:myapp1/color/color.dart';
import 'package:myapp1/screens/details_screen.dart';

class ProductWidget extends StatefulWidget {
  ProductWidget(
      {super.key,
      required this.proName,
      required this.descName,
      required this.rupees,
      required this.image});

  final String proName;
  final String descName;
  final String rupees;
  final String image;

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool isWishlisted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 220,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    image: widget.image,
                    proName: widget.proName,
                    desc: widget.descName,
                    price: widget.rupees,
                  ),
                ),
              );
            },
            child: Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 206, 206, 206),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
              child: Image.asset(widget.image),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(234, 222, 222, 222),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            padding: EdgeInsets.all(8),
            height: 90,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.proName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      widget.descName,
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 4),
                    Text(
                      widget.rupees,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isWishlisted = !isWishlisted;
                      if (isWishlisted) {
                        wishlistedProducts.add(widget);
                      } else {
                        wishlistedProducts.remove(widget);
                      }
                    });
                  },
                  child: Icon(
                    isWishlisted ? Icons.favorite : Icons.favorite_border,
                    color: isWishlisted ? Colors.red : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
