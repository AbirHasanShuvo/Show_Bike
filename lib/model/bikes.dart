enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}


class Bike_Model{

  const Bike_Model({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageURL,
    required this.ingredients,
    required this.steps,
    required this.bikeCategory,
    required this.price,
    required this.complexity,
    required this.affordability
});


  final String id;
  final List<String> categories;
  final String title;
  final String imageURL;
  final List<String> ingredients;
  final String steps;
  final String bikeCategory;
  final String price;
  final Complexity complexity;
  final Affordability affordability;

}