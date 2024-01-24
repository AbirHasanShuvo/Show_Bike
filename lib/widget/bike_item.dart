import 'package:bike_specs/model/bikes.dart';
import 'package:bike_specs/screen/bike_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BikeItem extends StatelessWidget{
  const BikeItem({
    super.key,
    required this.your_Bike,
    required this.onToggleFavorite

});

  final Bike_Model your_Bike;
  final void Function(Bike_Model) onToggleFavorite;


  @override
  Widget build(BuildContext context) {

    void go_to_Details(){
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Bike_Details_Screen(
        singleScreen: your_Bike,
        onToggleFavorite: onToggleFavorite,

      )));
    }

    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      clipBehavior: Clip.hardEdge,//without this shape won't work on the Card widget
      elevation: 2,//this is for 3d effect in card

      child: InkWell(
        onTap: go_to_Details,
        child: Stack(
          //widget in a widget
          alignment: Alignment.center,
          children: [
            Hero(
              tag: your_Bike.id,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(your_Bike.imageURL),
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 6),
                child: Column(
                  children: [
                    Text(
                      your_Bike.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                    const SizedBox(height: 6,),
                    
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       Row(
                         children: [
                           const Icon(Icons.motorcycle_sharp),
                           const SizedBox(width: 3,),
                           Text(
                             your_Bike.bikeCategory,
                             style: const TextStyle(
                                 color: Colors.white
                             ),

                           ),

                           const SizedBox(width: 9,),

                           const Icon(Icons.money),
                           Text(
                             '${your_Bike.price}৳',
                             style: const TextStyle(
                                 color: Colors.white
                             ),
                           ),
                         ],
                       )
                     ],

                   ),

                    
                  ],
                ),
              ),


            )

          ],
        ),

      ),

    );
  }


}