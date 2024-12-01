import 'package:flutter/material.dart';
import 'package:myapp1/Data/list.dart';
import 'package:myapp1/widget/product_widget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: wishlistedProducts.isEmpty
            ? Center(
                child: Text('No items in wishlist'),
              )
            : ListView.builder(
                itemCount: wishlistedProducts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: wishlistedProducts[index],
                  );
                },
              ),
      ),
    );
  }
}
