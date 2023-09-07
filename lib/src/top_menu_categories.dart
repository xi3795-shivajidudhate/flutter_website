import 'package:flutter/material.dart';
import 'package:flutter_website/src/data_models/menu_category_data.dart';
import 'package:flutter_website/src/style.dart';

class MenuCategories extends StatelessWidget {
  const MenuCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        itemCount: menus.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => FoodCategory(menu: menus[index]),
      ),
    );
  }
}

//ignore: must_be_immutable
class FoodCategory extends StatelessWidget {
  FoodCategory({super.key, required this.menu});
  final Menu menu;
  double imageWidth = 104;
  double imageHeight = 74;
  double menuCategoriPadding = 15;

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;

    if (mediaWidth <= 800) {
      imageWidth = 90;
      imageHeight = 60;
      menuCategoriPadding = 12;
    } else if (mediaWidth <= 500) {
      imageWidth = 70;
      imageHeight = 40;
      menuCategoriPadding = 9;
    } else {}

    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: menuCategoriPadding, vertical: 0),
      child: Column(
        children: [
          Container(
            width: imageWidth,
            height: imageHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                //image: NetworkImage("https://dummyimage.com//104x74"),
                image: AssetImage(menu.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(999),
              border: Border.all(color: themeGreen, width: 1),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            menu.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.10,
            ),
          ),
        ],
      ),
    );
  }
}
