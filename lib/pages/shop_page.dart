import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        // search bar
        Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            )),
        // message
        Text('everyone flies.. some fly longer than others')

        // hot pick
      ],
    ));
  }
}
