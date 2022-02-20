import 'package:betting_strategies_app/data/local_data_store.dart';
import 'package:betting_strategies_app/models/strategy.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  final Strategy strategy;

  const DetailsPage({Key? key, required this.strategy}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final LocalDataStore _store = LocalDataStore();
  late List<int> _favoriteList;

  @override
  void initState() {
    super.initState();
    _favoriteList = _store.getFavoriteList();
  }

  bool get _isFavorite => _favoriteList.contains(widget.strategy.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: Text(
            widget.strategy.title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (_isFavorite) {
                    _favoriteList.remove(widget.strategy.id);
                  } else {
                    _favoriteList.add(widget.strategy.id);
                  }
                });
                _store.setFavoriteList(_favoriteList);
              },
              icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                widget.strategy.image,
              ),
              Text(
                widget.strategy.text,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
