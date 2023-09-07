import 'package:flutter/material.dart';
import 'package:flutter_website/src/fillterpages/dietary_page.dart';
import 'package:flutter_website/src/fillterpages/from_postmates_page.dart';
import 'package:flutter_website/src/fillterpages/max_delivery_fee_page.dart';
import 'package:flutter_website/src/fillterpages/price_range_page.dart';
import 'package:flutter_website/src/fillterpages/sort_bulletlist_page.dart';

class FilltersPage extends StatelessWidget {
  const FilltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    double fillterPadding = 16;
    double filtersWidth = 200;
    if (mediaWidth >= 500 && mediaWidth <= 800) {
      fillterPadding = 10;
    } else if (mediaWidth <= 500) {
      filtersWidth = 400;
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(fillterPadding),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFFF1F5F9)),
                  ),
                  child: const Text(
                    'Clear all',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Readex Pro',
                      fontWeight: FontWeight.w500,
                      height: 1.43,
                      letterSpacing: 0.10,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SortExpansionTile(),
                const SizedBox(height: 16),
                const PriceRangeExpansionTile(),
                const SizedBox(height: 16),
                const FromPostmatesExpansionTile(),
                const SizedBox(height: 16),
                const MaxDeliveryFeeExpansionTile(),
                const SizedBox(height: 16),
                const DietaryExpansionTile(),
              ],
            ),
          );
        } else {
          return Padding(
            padding: EdgeInsets.all(fillterPadding),
            child: SizedBox(
              width: filtersWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '80 stores',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Readex Pro',
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => {},
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFFF1F5F9)),
                    ),
                    child: const Text(
                      'Clear all',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w500,
                        height: 1.43,
                        letterSpacing: 0.10,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SortExpansionTile(),
                  const SizedBox(height: 16),
                  const PriceRangeExpansionTile(),
                  const SizedBox(height: 16),
                  const FromPostmatesExpansionTile(),
                  const SizedBox(height: 16),
                  const MaxDeliveryFeeExpansionTile(),
                  const SizedBox(height: 16),
                  const DietaryExpansionTile(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
