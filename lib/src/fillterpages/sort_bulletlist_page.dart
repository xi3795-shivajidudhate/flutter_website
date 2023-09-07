import 'package:flutter/material.dart';
import 'package:flutter_website/src/style.dart';

class SortExpansionTile extends StatelessWidget {
  const SortExpansionTile({super.key});

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
        'Sort',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Readex Pro',
          fontWeight: FontWeight.w600,
          height: 1.50,
          letterSpacing: 0.10,
        ),
      ),
      children: const <Widget>[
        SortBulletList(),
      ],
    );
  }
}

enum Sort { pickedforyou, mostpopular, deliverytime, rating }

class SortBulletList extends StatefulWidget {
  const SortBulletList({super.key});

  @override
  State<SortBulletList> createState() => _SortBulletListState();
}

class _SortBulletListState extends State<SortBulletList> {
  Sort? _sortItem = Sort.pickedforyou;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<Sort>(
          title: const Text(
            'Picked for you (default)',
            style: TextStyle(
              color: Color(0xFF0F172A),
              fontSize: 14,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.w500,
              height: 1.43,
              letterSpacing: 0.10,
            ),
          ),
          fillColor: const MaterialStatePropertyAll(themeGreen),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          value: Sort.pickedforyou,
          groupValue: _sortItem,
          onChanged: (Sort? value) {
            setState(() {
              _sortItem = value;
            });
          },
        ),
        RadioListTile<Sort>(
          title: const Text(
            'Most popular',
            style: TextStyle(
              color: Color(0xFF0F172A),
              fontSize: 14,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.w500,
              height: 1.43,
              letterSpacing: 0.10,
            ),
          ),
          fillColor: const MaterialStatePropertyAll(themeGreen),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          value: Sort.mostpopular,
          groupValue: _sortItem,
          onChanged: (Sort? value) {
            setState(() {
              _sortItem = value;
            });
          },
        ),
        RadioListTile<Sort>(
          title: const Text(
            'Delivery time',
            style: TextStyle(
              color: Color(0xFF0F172A),
              fontSize: 14,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.w500,
              height: 1.43,
              letterSpacing: 0.10,
            ),
          ),
          fillColor: const MaterialStatePropertyAll(themeGreen),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          value: Sort.deliverytime,
          groupValue: _sortItem,
          onChanged: (Sort? value) {
            setState(() {
              _sortItem = value;
            });
          },
        ),
        RadioListTile<Sort>(
          title: const Text(
            'Rating',
            style: TextStyle(
              color: Color(0xFF0F172A),
              fontSize: 14,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.w500,
              height: 1.43,
              letterSpacing: 0.10,
            ),
          ),
          fillColor: const MaterialStatePropertyAll(themeGreen),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          value: Sort.rating,
          groupValue: _sortItem,
          onChanged: (Sort? value) {
            setState(() {
              _sortItem = value;
            });
          },
        ),
      ],
    );
  }
}
