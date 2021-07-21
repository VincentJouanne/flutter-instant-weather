import 'package:flutter/material.dart';

class FavoriteStar extends StatefulWidget {
  @override
  _FavoriteStarState createState() => _FavoriteStarState();
}

class _FavoriteStarState extends State<FavoriteStar> {
  bool _isFavorited = false;

  Widget build(BuildContext context) {
    return IconButton(
      key: Key('favorite_star_icon_button'),
      icon: (_isFavorited
          ? Icon(Icons.star, key: Key('favorite_star_filled_icon_button'))
          : Icon(Icons.star_border,
              key: Key('favorite_star_unfilled_icon_button'))),
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
