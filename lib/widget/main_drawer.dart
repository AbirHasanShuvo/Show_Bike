import 'package:bike_specs/model/bikes.dart';
import 'package:bike_specs/screen/bikes_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget{

  const MainDrawer({
    super.key,
    required this.onToggleFavorite,
    required this.clickAble,

});


  final void Function(Bike_Model) onToggleFavorite;
  final void Function(String text) clickAble;

  @override
  Widget build(BuildContext context) {



    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),

            child: Row(
              children: [
                Icon(
                  Icons.filter_center_focus,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),

                const SizedBox(width: 18,),

                Text(
                  'Filtered engine',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary
                  ),
                )
              ],
            ),

          ),

          ListTile(
            leading: Icon(
              Icons.electric_bike_rounded,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Sports',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 24,),
            ),

            onTap: (){
              clickAble('Sports');
            },
          ),

          ListTile(
            leading: Icon(
              Icons.directions_bike_outlined,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Cruiser',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 24,),
            ),

            onTap: (){
              clickAble('Cruiser');
            },
          ),

          ListTile(
            leading: Icon(
              Icons.motorcycle,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Adventure',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 24,),
            ),

            onTap: (){
              //onSelectScreen('filters');
            },
          ),



        ],
      ),
    );
  }

}