import 'package:flutter/material.dart';
import 'package:flutter_website/src/style.dart';
//import 'package:flutter_website/src/style.dart';

class FromPostmatesExpansionTile extends StatefulWidget {
  const FromPostmatesExpansionTile({super.key});

  @override
  State<FromPostmatesExpansionTile> createState() =>
      _FromPostmatesExpansionTileState();
}

class _FromPostmatesExpansionTileState
    extends State<FromPostmatesExpansionTile> {
  bool deals = true;
  bool topEats = true;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      tilePadding: EdgeInsets.zero,
      childrenPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      collapsedBackgroundColor: Colors.white,
      shape: Border.all(color: Colors.transparent),
      title: const Text(
        'From Postmates',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Readex Pro',
          fontWeight: FontWeight.w600,
          height: 1.50,
          letterSpacing: 0.10,
        ),
      ),
      children: <Widget>[
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flex(direction: Axis.horizontal, children: [
              Icon(
                Icons.emoji_food_beverage,
                size: 24,
              ),
              SizedBox(width: 24),
              Text(
                'Deals',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Readex Pro',
                  fontWeight: FontWeight.w600,
                  height: 1.43,
                  letterSpacing: 0.10,
                ),
              ),
            ]),
            Switch(
              value: deals,
              trackColor: MaterialStateProperty.all(const Color(0xFFE2E8F0)),
              activeColor: themeGreen,
              thumbColor: const MaterialStatePropertyAll(Colors.white),
              onChanged: (bool value) {
                setState(() {
                  deals = value;
                });
              },
            ),
          ],
        ),
        const SizedBox(height: 20),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flex(direction: Axis.horizontal, children: [
              Icon(
                Icons.fastfood,
                size: 24,
              ),
              SizedBox(width: 24),
              Text(
                'Top Eats',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Readex Pro',
                  fontWeight: FontWeight.w600,
                  height: 1.43,
                  letterSpacing: 0.10,
                ),
              ),
            ]),
            Switch(
              value: topEats,
              trackColor: MaterialStateProperty.all(const Color(0xFFE2E8F0)),
              activeColor: themeGreen,
              thumbColor: const MaterialStatePropertyAll(Colors.white),
              onChanged: (bool value) {
                setState(() {
                  topEats = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
