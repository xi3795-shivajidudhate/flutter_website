import 'package:flutter/material.dart';
import 'package:flutter_website/src/style.dart';

class MaxDeliveryFeeExpansionTile extends StatelessWidget {
  const MaxDeliveryFeeExpansionTile({super.key});

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
        'Max Delivery Fee',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Readex Pro',
          fontWeight: FontWeight.w600,
          height: 1.50,
          letterSpacing: 0.10,
        ),
      ),
      children: const <Widget>[FeeRangeSlider()],
    );
  }
}

class FeeRangeSlider extends StatefulWidget {
  const FeeRangeSlider({super.key});

  @override
  State<FeeRangeSlider> createState() => _FeeRangeSliderState();
}

class _FeeRangeSliderState extends State<FeeRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(2, 3);
  final RangeLabels _labels = const RangeLabels('\$2', '\$3');
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _currentRangeValues,
      min: 1,
      max: 4,
      divisions: 4,
      activeColor: themeGreen,
      inactiveColor: themeGrey,
      labels: _labels,
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}
