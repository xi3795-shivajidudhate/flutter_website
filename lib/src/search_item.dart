import 'package:flutter/material.dart';

class SearchItem extends StatefulWidget {
  const SearchItem({super.key});

  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF1F5F9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
          size: 20,
        ),
        contentPadding: const EdgeInsets.all(4),
        hintText: 'Food, groceries, drinks, etc',
        hintStyle: const TextStyle(
          color: Color(0xFF94A3B8),
          fontSize: 14,
          fontFamily: 'Readex Pro',
          fontWeight: FontWeight.w500,
          height: 1.43,
          letterSpacing: 0.10,
        ),
      ),
    );
  }
}
