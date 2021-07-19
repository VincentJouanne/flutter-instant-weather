import 'package:flutter/material.dart';

class FavoriteStar extends StatefulWidget {
  @override
  _FavoriteStarState createState() => _FavoriteStarState();
}

class _FavoriteStarState extends State<FavoriteStar> {
  bool _isFavorited = false;

  Widget build(BuildContext context) {
    return IconButton(
      icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
      color: Colors.black,
      onPressed: _toggleFavorite,
    );
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }
}
