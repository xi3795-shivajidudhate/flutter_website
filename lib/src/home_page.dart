import 'package:flutter/material.dart';
import 'package:flutter_website/src/fillterpages/fillters_page.dart';
import 'package:flutter_website/src/menu_card.dart';
import 'package:flutter_website/src/top_bar.dart';
import 'package:flutter_website/src/top_menu_categories.dart';
import 'package:flutter_website/src/data_models/foodchoice_data.dart';
import 'package:flutter_website/src/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int gridViewColumCount = 3;
  double gridAaspectRationWidth = 1;
  double gridAaspectRationHeight = 0.65;
  double appbarHeight = 50;
  double spaceBetweenSidebarandManPage = 48;
  int flexValOfRightBar = 2;

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    if (mediaWidth > 1150) {
      gridViewColumCount = 3;
      gridAaspectRationHeight = 0.64;
      appbarHeight = 60;
      spaceBetweenSidebarandManPage = 48;
      flexValOfRightBar = 2;
    } else if (mediaWidth > 800 && mediaWidth < 1150) {
      gridViewColumCount = 2;
      gridAaspectRationHeight = 0.65;
      appbarHeight = 90;
      spaceBetweenSidebarandManPage = 35;
    } else if (mediaWidth > 450 && mediaWidth < 800) {
      gridViewColumCount = 1;
      gridAaspectRationHeight = 0.55;
      appbarHeight = 150;
      spaceBetweenSidebarandManPage = 20;
      flexValOfRightBar = 3;
    } else if (mediaWidth < 450) {
      gridViewColumCount = 1;
      gridAaspectRationHeight = 0.60;
      appbarHeight = 200;
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 450) {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: appbarHeight,
              title: const TopBarPage(),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                    child: MenuCategories(),
                  ),
                  const Divider(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: flexValOfRightBar,
                          child: const Wrap(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  '80 stores',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                    height: 1.29,
                                  ),
                                ),
                              ),
                              FilltersPage(),
                            ],
                          ),
                        ),
                        SizedBox(width: spaceBetweenSidebarandManPage),
                        Expanded(
                          flex: 7,
                          child: _gridViewWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: appbarHeight,
              title: const TopBarPage(),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                    child: MenuCategories(),
                  ),
                  const Divider(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '80 stores',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontFamily: 'Readex Pro',
                            fontWeight: FontWeight.w500,
                            height: 1.29,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: defaultGrey,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(80, 40),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Text(
                                'Filters',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                  letterSpacing: 0.10,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.sort, size: 15, color: Colors.black),
                            ],
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  heightFactor: 0.85,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    child: SingleChildScrollView(
                                      child: Wrap(
                                        children: <Widget>[
                                          Flex(
                                            direction: Axis.horizontal,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Filter',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22,
                                                  fontFamily: 'Readex Pro',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.27,
                                                ),
                                              ),
                                              IconButton(
                                                icon: const Icon(Icons.close),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              ),
                                            ],
                                          ),
                                          const FilltersPage()
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _gridViewWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  Widget _gridViewWidget() {
    return Center(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: gridViewColumCount,
        childAspectRatio: (gridAaspectRationWidth / gridAaspectRationHeight),
        scrollDirection: Axis.vertical,
        children: List.generate(choices.length, (index) {
          return SelectCard(foodchoice: choices[index]);
        }),
      ),
    );
  }
}
