import 'package:flutter/material.dart';
import 'package:flutter_website/src/style.dart';
import 'package:flutter_website/src/search_item.dart';
import 'package:toggle_switch/toggle_switch.dart';

class TopBarPage extends StatefulWidget {
  const TopBarPage({super.key});
  @override
  State<TopBarPage> createState() => _TopBarPageState();
}

class _TopBarPageState extends State<TopBarPage> {
  String loginText = 'Login';
  double toggleSwithWidth = 90;
  double searchBoxWidth = 350;
  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    if (mediaWidth > 1150) {
      loginText = 'Login';
      toggleSwithWidth = 90;
      searchBoxWidth = 350;
    } else if (mediaWidth > 800 && mediaWidth < 1150) {
      loginText = 'Login';
      toggleSwithWidth = 90;
      searchBoxWidth = 350;
    } else if (mediaWidth > 480 && mediaWidth < 800) {
      loginText = 'Login';
      toggleSwithWidth = 100;
      searchBoxWidth = 250;
    } else if (mediaWidth < 480) {
      loginText = '';
      toggleSwithWidth = 150;
      searchBoxWidth = 150;
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1150) {
          return _oneRowTopBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1150) {
          return _twoRowTopBar();
        } else if (constraints.maxWidth > 480 && constraints.maxWidth < 800) {
          return _twoRowTopBar();
        } else {
          return _threeRowTopBar();
        }
      },
    );
  }

  Widget _oneRowTopBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Menu Icon
        _menuIconWidget(),

        //App Name
        _appNameWiget(),

        //Toggle switch
        _toggleSwitchWidget(),

        //Location Button
        _locationButtonWigdet(),

        //Search bar
        _searchBoxWidget(),

        // Cart Button
        _cartButtonWidget(),

        //Login button
        _loginButtonWidget(),

        //Signup button
        _signUpButtonWidget(),
      ],
    );
  }

  Widget _twoRowTopBar() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Menu Icon
            _menuIconWidget(),

            //App Name
            _appNameWiget(),

            //Toggle switch
            _toggleSwitchWidget(),

            // Cart Button
            _cartButtonWidget(),

            //Login button
            _loginButtonWidget(),

            //Signup button
            _signUpButtonWidget(),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Location Button
            _locationButtonWigdet(),

            //Search bar
            _searchBoxWidget(),
          ],
        ),
      ],
    );
  }

  Widget _threeRowTopBar() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Menu Icon
            _menuIconWidget(),

            //Signup button
            _signUpButtonWidget(),

            //Login button
            _loginButtonWidget(),

            // Cart Button
            _cartButtonWidget(),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Toggle switch
            _toggleSwitchWidget(),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Location Button
            _locationButtonWigdet(),

            //Search bar
            _searchBoxWidget(),
          ],
        ),
      ],
    );
  }

  Widget _menuIconWidget() {
    return IconButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      onPressed: () {},
      icon: const Icon(Icons.menu),
    );
  }

  Widget _appNameWiget() {
    return const Text(
      'Postmates',
      style: TextStyle(
        letterSpacing: 0.1,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _toggleSwitchWidget() {
    return ToggleSwitch(
      minWidth: toggleSwithWidth,
      cornerRadius: 20.0,
      activeBgColors: const [
        [Colors.white],
        [Colors.white]
      ],
      activeFgColor: Colors.black,
      inactiveBgColor: const Color(0xFFF1F5F9),
      inactiveFgColor: Colors.black,
      initialLabelIndex: 1,
      totalSwitches: 2,
      labels: const ['Delivery', 'Pickup'],
      radiusStyle: true,
      onToggle: (index) {},
    );
  }

  Widget _locationButtonWigdet() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: defaultGrey,
        foregroundColor: Colors.black,
        minimumSize: const Size(80, 40),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999),
        ),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.location_on,
            size: 15,
          ),
          SizedBox(width: 8),
          Text(
            'New-York • Now',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.w500,
              height: 1.43,
              letterSpacing: 0.10,
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }

  Widget _searchBoxWidget() {
    return SizedBox(
      width: searchBoxWidth,
      height: 40,
      child: const SearchItem(),
    );
  }

  Widget _cartButtonWidget() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: themeGreen,
        foregroundColor: Colors.white,
        minimumSize: const Size(80, 40),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999),
        ),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.shopping_cart,
            size: 15,
          ),
          SizedBox(width: 8),
          Text(
            'Cart • 0',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.w500,
              height: 1.43,
              letterSpacing: 0.10,
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }

  Widget _loginButtonWidget() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: defaultGrey,
        foregroundColor: Colors.white,
        minimumSize: const Size(80, 40),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999),
        ),
      ),
      child: Row(
        children: [
          const Icon(Icons.account_circle, size: 15, color: Colors.black),
          const SizedBox(width: 8),
          Text(
            loginText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Readex Pro',
              fontWeight: FontWeight.w500,
              height: 1.43,
              letterSpacing: 0.10,
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }

  Widget _signUpButtonWidget() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: defaultGrey,
        foregroundColor: Colors.white,
        minimumSize: const Size(80, 40),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999),
        ),
      ),
      child: const Text(
        'Sign up',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Readex Pro',
          fontWeight: FontWeight.w500,
          height: 1.43,
          letterSpacing: 0.10,
        ),
      ),
      onPressed: () {},
    );
  }
}
