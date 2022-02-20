import 'package:betting_strategies_app/data/strategy_repository.dart';
import 'package:betting_strategies_app/models/strategy.dart';
import 'package:betting_strategies_app/pages/widgets/strategy_list_item.dart';
import 'package:flutter/material.dart';

import '../../data/local_data_store.dart';

class StrategyList extends StatefulWidget {
  final bool onlyFavorite;
  const StrategyList({Key? key, this.onlyFavorite = false}) : super(key: key);

  @override
  State<StrategyList> createState() => StrategyListState();
}

class StrategyListState extends State<StrategyList> {
  final LocalDataStore _store = LocalDataStore();
  late List<int> _favoriteList;

  @override
  void initState() {
    super.initState();
    _favoriteList = _store.getFavoriteList();
  }

  void _saveList() {
    _store.setFavoriteList(_favoriteList);
  }

  void updateList() {
    setState(() {
      _favoriteList = _store.getFavoriteList();
    });
  }

  List<Strategy> get _strategies => widget.onlyFavorite
      ? StrategyRepository.strategies
          .where((element) => _favoriteList.contains(element.id))
          .toList()
      : StrategyRepository.strategies;

  @override
  Widget build(BuildContext context) {
    if (_strategies.isEmpty) {
      return const Center(
        child: Text("You haven't added any strategies yet"),
      );
    }
    return ListView.builder(
      itemCount: _strategies.length,
      itemBuilder: (context, index) {
        final strategy = _strategies[index];
        return StrategyListItem(
          strategy: strategy,
          isFavorite: _store.getFavoriteList().contains(strategy.id),
          onFavoritePress: () {
            setState(() {
              if (_favoriteList.contains(strategy.id)) {
                _favoriteList.remove(strategy.id);
              } else {
                _favoriteList.add(strategy.id);
              }
            });
            _saveList();
          },
          updateListCallback: updateList,
        );
      },
    );
  }
}
