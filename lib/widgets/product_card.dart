import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  //variables
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;

  const ProductCard({
    super.key,
    //requires variables those are creaed just above
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
//shoes card
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //name
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 5),
          //price
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 5),
          //image
          Center(child: Image.asset(image, height: 175)),
        ],
      ),
    );
  }
}
