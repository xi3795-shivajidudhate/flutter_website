import 'package:flutter/material.dart';
import 'package:flutter_website/src/style.dart';

class DietaryExpansionTile extends StatelessWidget {
  const DietaryExpansionTile({super.key});

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
      children: const <Widget>[DietaryFilterChip()],
    );
  }
}

enum DietaryFilter { vegetarian, vegan, glutenFree, halal }

class DietaryFilterChip extends StatefulWidget {
  const DietaryFilterChip({super.key});

  @override
  State<DietaryFilterChip> createState() => _DietaryFilterChipState();
}

class _DietaryFilterChipState extends State<DietaryFilterChip> {
  Set<DietaryFilter> filters = <DietaryFilter>{
    DietaryFilter.vegan,
    DietaryFilter.halal
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Wrap(
            spacing: 3.0,
            runSpacing: 12,
            children: DietaryFilter.values.map((DietaryFilter dietary) {
              return FilterChip(
                label: Text(dietary.name),
                selected: filters.contains(dietary),
                selectedColor: themeGrey,
                labelPadding: const EdgeInsets.symmetric(horizontal: 2),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters.add(dietary);
                    } else {
                      filters.remove(dietary);
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
