import 'package:bike_specs/data/dummy_data.dart';
import 'package:bike_specs/model/bike_category.dart';
import 'package:bike_specs/model/bikes.dart';
import 'package:bike_specs/screen/bike_details_screen.dart';
import 'package:bike_specs/screen/bikes_screen.dart';
import 'package:bike_specs/widget/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bike_specs/data/dummy_data.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen(
      {super.key, required this.bikes_Details, required this.onToggleFavorite});

  final List<Bike_Model> bikes_Details;
  final void Function(Bike_Model) onToggleFavorite;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  void _selectCategory(BuildContext context, CateGory cateGory) {
    final filtered_Bikes = widget.bikes_Details
        .where((bik) => bik.categories.contains(cateGory.id))
        .toList();
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => BikeScreen(
              hereList: filtered_Bikes,
              appBarTitle: cateGory.name,
              onToggleFavorite: widget.onToggleFavorite,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        child: GridView(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
          children: [
            for (final category in availableCategories)
              CategoryItem(
                  cateGory: category,
                  onSelectCategory: () {
                    _selectCategory(context, category);
                  })
          ],
        ),
        animation: _animationController,
        builder: (context, child) =>
            SlideTransition(
              position: Tween(
                  begin: const Offset(0, 0.3),
                  end:  const Offset(0, 0)
                ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut)),
              child: child,

            )
    );
  }
}




