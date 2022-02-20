import 'package:betting_strategies_app/pages/widgets/strategy_list.dart';
import 'package:flutter/material.dart';

import '../favorite/favorite_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<StrategyListState> _listKey = GlobalKey<StrategyListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Betting Strategies",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 33,
              fontStyle: FontStyle.normal,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FavoritePage(),
                  ),
                );
                _listKey.currentState?.updateList();
              },
              icon: Icon(
                Icons.favorite_sharp,
                color: Theme.of(context).primaryColor,
              ),
              iconSize: 35,
            )
          ],
        ),
        body: StrategyList(
          key: _listKey,
        ));
  }
}
