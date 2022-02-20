import 'package:betting_strategies_app/pages/widgets/strategy_list.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Favorite Strategies",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        body: const StrategyList(
          onlyFavorite: true,
        ));
  }
}
