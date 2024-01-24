import 'package:bike_specs/data/dummy_data.dart';
import 'package:bike_specs/model/bike_category.dart';
import 'package:bike_specs/screen/bike_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bike_specs/model/bikes.dart';

class CategoryItem extends StatelessWidget{
  const CategoryItem({
    super.key,
    required this.cateGory,
    required this.onSelectCategory,


  });


  final CateGory cateGory;
  final void Function() onSelectCategory;


  @override
  Widget build(BuildContext context) {


    return InkWell(
        splashColor: Colors.redAccent,
        borderRadius: BorderRadius.circular(15),
        onTap: onSelectCategory,
        child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  colors: [
                    cateGory.color.withOpacity(0.55),
                    cateGory.color.withOpacity(0.9)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              ),

            ),

            child: Center(
              child: Text(
                cateGory.name,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            )
        )
    );
  }

}