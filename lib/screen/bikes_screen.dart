import 'package:bike_specs/model/bike_category.dart';
import 'package:bike_specs/widget/bike_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:bike_specs/model/bikes.dart';
import 'package:flutter/material.dart';

class BikeScreen extends StatelessWidget{

  const BikeScreen({
    super.key,
    required this.hereList,
    required this.appBarTitle,
    required this.onToggleFavorite

});

  final List<Bike_Model> hereList;

  final String appBarTitle;

  final void Function(Bike_Model) onToggleFavorite;



  @override
  Widget build(BuildContext context) {

    Widget widget = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
              'Oops! Nothing here',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground
            )
          ),

          const SizedBox(height: 16,),
          Text(
              'Try selecting a different one',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground
              )
          ),

        ],
      ),
    );


    if(hereList.isNotEmpty){
      widget = ListView.builder(
        itemCount: hereList.length,
        itemBuilder: (ctx, index) =>
            BikeItem(
              your_Bike: hereList[index],
              onToggleFavorite: onToggleFavorite,
            )
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: widget
    );
  }

}