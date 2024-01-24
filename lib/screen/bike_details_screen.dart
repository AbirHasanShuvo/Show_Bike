import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bike_specs/model/bike_category.dart';
import 'package:bike_specs/model/bikes.dart';

class Bike_Details_Screen extends StatelessWidget {
  const Bike_Details_Screen(
      {super.key, required this.singleScreen, required this.onToggleFavorite});

  final void Function(Bike_Model) onToggleFavorite;

  final Bike_Model singleScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(singleScreen.title),
          actions: [
            IconButton(
              onPressed: () {
                onToggleFavorite(singleScreen);
              },
              icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return RotationTransition(turns: animation, child: child);
                },
                child: Icon(Icons.star_border),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: singleScreen.id,
              child: Image.network(
                  singleScreen.imageURL,
                  height: 300,
                  width: double.infinity,
                  //fit: BoxFit.cover,
                  //this boxfit makes picture or any other component same fit, for a number of pics or component it used
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                singleScreen.title,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.inverseSurface,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Specification',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 14,
              ),
              for (final ingredient in singleScreen.ingredients)
                Text(ingredient,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground)),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Short review',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Text(singleScreen.steps,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        )),
              ),
            ],
          ),
        ));
  }
}
