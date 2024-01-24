import 'package:bike_specs/data/dummy_data.dart';
import 'package:bike_specs/model/bike_category.dart';
import 'package:bike_specs/model/bikes.dart';
import 'package:bike_specs/screen/bike_category_grid_screen.dart';
import 'package:bike_specs/screen/bikes_screen.dart';
import 'package:bike_specs/widget/main_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bike_specs/screen/favourite_bikes.dart';

class TabScreen extends StatefulWidget{
  const TabScreen({
    super.key,
  });




  @override
  State<StatefulWidget> createState() {
    return _TabScreen();
  }

}

class _TabScreen extends State<TabScreen>{

  final List<Bike_Model> bikes_List = [];
  final List<Bike_Model> cruiser_List = [];
  final List<Bike_Model> sports_List = [];

  void _showMessage(String message){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  void _yourFavourite(Bike_Model bike){
    final isExisting = bikes_List.contains(bike);
    //we are checking our bike_list arraylist has same bike info which came through bike in this function

    if(isExisting){
      setState(() {
        bikes_List.remove(bike);
        _showMessage('This bike removed from your favourite list');
      });
    }

    else{
      setState(() {
        bikes_List.add(bike);
        _showMessage('This bike added to your favourite list');
      });
    }
  }


  final filtered_Bikes = bikes.where((bik) => bik.categories.contains('Cruiser')).toList();


  void someThing(String text){

    if(text == 'Cruiser'){
      if(cruiser_List.isNotEmpty){
        Navigator.of(context).push(MaterialPageRoute(builder:(ctx) =>
            BikeScreen(
                hereList: cruiser_List,
                appBarTitle: 'All Cruiser Bikes',
                onToggleFavorite: _yourFavourite)
        )
        );

      }

      else{
        for(final filteres in bikes){
          if(filteres.bikeCategory == 'Cruiser'){
            cruiser_List.add(filteres);
          }
        }
        Navigator.of(context).push(MaterialPageRoute(builder:(ctx) =>
            BikeScreen(
                hereList: cruiser_List,
                appBarTitle: 'All Cruiser Bikes',
                onToggleFavorite: _yourFavourite)
        )
        );

      }
    }

    setState(() {
      if(text == 'Sports'){
        if(sports_List.isNotEmpty){
          Navigator.of(context).push(MaterialPageRoute(builder:(ctx) =>
              BikeScreen(
                  hereList: sports_List,
                  appBarTitle: 'All Sports Bikes',
                  onToggleFavorite: _yourFavourite)
          )
          );

        }

        else{
          for(final filteres in bikes){
            if(filteres.bikeCategory == 'Sports'){
              sports_List.add(filteres);
            }
          }
          Navigator.of(context).push(MaterialPageRoute(builder:(ctx) =>
              BikeScreen(
                  hereList: cruiser_List,
                  appBarTitle: 'All Sports Bikes',
                  onToggleFavorite: _yourFavourite)
          )
          );

        }
      }
    });









  }


  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {


    Widget activeScreen = CategoryScreen(
      bikes_Details: bikes,
      onToggleFavorite: _yourFavourite,
    );
    //availableCategories is full list of dummy data

    if(_selectedPageIndex == 1){
      activeScreen = BikeScreen(
        hereList: bikes_List,
        appBarTitle: '',
        onToggleFavorite: _yourFavourite,
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('BikeGurdian'),
        ),

      drawer: MainDrawer(
        onToggleFavorite: _yourFavourite,
        clickAble: someThing,
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        //this onTap will automatically generate some index value and give it to the function
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.electric_bike_outlined), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.set_meal), label: 'Favorites'),
        ],
      ),

      body: activeScreen,


    );
  }

}