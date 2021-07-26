import 'package:flutter/material.dart';

class WeatherIconData extends StatelessWidget {
  const WeatherIconData({Key? key, required this.icon, required this.data})
      : super(key: key);

  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(icon), SizedBox(width: 4), Text(data)],
    );
  }
}
