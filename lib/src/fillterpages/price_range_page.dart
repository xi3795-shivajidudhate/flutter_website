import 'package:flutter/material.dart';
import 'package:flutter_website/src/style.dart';

class PriceRangeExpansionTile extends StatelessWidget {
  const PriceRangeExpansionTile({super.key});

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
        'Price Range',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Readex Pro',
          fontWeight: FontWeight.w600,
          height: 1.50,
          letterSpacing: 0.10,
        ),
      ),
      children: const <Widget>[PriceRangeFilterChip()],
    );
  }
}

enum PriceRangeFilter { $, $$, $$$, $$$$ }

class PriceRangeFilterChip extends StatefulWidget {
  const PriceRangeFilterChip({super.key});

  @override
  State<PriceRangeFilterChip> createState() => _PriceRangeFilterChipState();
}

class _PriceRangeFilterChipState extends State<PriceRangeFilterChip> {
  Set<PriceRangeFilter> filters = <PriceRangeFilter>{
    PriceRangeFilter.$$,
    PriceRangeFilter.$$$$
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Wrap(
            spacing: 12.0,
            runSpacing: 12,
            children: PriceRangeFilter.values.map((PriceRangeFilter price) {
              return FilterChip(
                label: Text(price.name),
                selected: filters.contains(price),
                selectedColor: themeGrey,
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters.add(price);
                    } else {
                      filters.remove(price);
                    }
                  });
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
