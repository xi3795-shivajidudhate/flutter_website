import 'package:flutter/material.dart';
import 'package:flutter_website/src/data_models/foodchoice_data.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({super.key, required this.foodchoice});
  final FoodsChoice foodchoice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                foodchoice.image,
                fit: BoxFit.fill,
                height: 120,
                width: 483,
              ),
            ),
            const SizedBox(height: 10),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  foodchoice.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Readex Pro',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                    letterSpacing: 0.10,
                  ),
                ),
                Text(
                  foodchoice.rating,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Readex Pro',
                    fontWeight: FontWeight.w600,
                    height: 1.33,
                    letterSpacing: 0.50,
                  ),
                )
              ],
            ),
            Text(
              foodchoice.subtitle,
              style: const TextStyle(
                color: Color(0xFF94A3B8),
                fontSize: 12,
                fontFamily: 'Readex Pro',
                fontWeight: FontWeight.w400,
                height: 1.33,
                letterSpacing: 0.40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
