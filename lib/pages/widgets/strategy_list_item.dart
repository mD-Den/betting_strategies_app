import 'package:betting_strategies_app/pages/details/details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/strategy.dart';

class StrategyListItem extends StatelessWidget {
  final Strategy strategy;
  final bool isFavorite;
  final VoidCallback? onFavoritePress;
  final VoidCallback updateListCallback;

  const StrategyListItem(
      {Key? key,
      required this.strategy,
      this.isFavorite = false,
      this.onFavoritePress,
      required this.updateListCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsPage(strategy: strategy),
          ),
        );
        updateListCallback();
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Stack(
            children: [
              SizedBox(
                width: double.maxFinite,
                height: double.maxFinite,
                child: Image.asset(
                  strategy.image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Colors.black.withOpacity(0.5),
                  child: Text(
                    strategy.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: onFavoritePress,
                  icon: isFavorite
                      ? const Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
