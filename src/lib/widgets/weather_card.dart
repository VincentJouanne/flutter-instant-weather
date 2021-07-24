import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_list_app/widgets/favorite_star.dart';
import 'package:simple_list_app/widgets/weather_icon_data.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard(
      {Key? key,
      required this.headline,
      required this.firstData,
      required this.secondData,
      required this.thirdData})
      : super(key: key);

  final String headline;
  final String firstData;
  final String secondData;
  final String thirdData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(headline.toUpperCase(),
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                Spacer(),
                Row(
                  children: [
                    WeatherIconData(icon: Icons.thermostat, data: firstData),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: WeatherIconData(
                            icon: Icons.speed, data: secondData)),
                    WeatherIconData(icon: Icons.opacity, data: thirdData)
                  ],
                )
              ]),
          FavoriteStar()
        ],
      ),
    );
  }
}
