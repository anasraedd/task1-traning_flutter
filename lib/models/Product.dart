
import 'dart:ui';

class Product{
  String id;
  String name;
  String Description;
  String category;
  double price;
  double discountPrice;
  int numberFavorite;
  int numberView;
  int numberBuy;
  List<String> images;
  List<Color> colors;
  double rating;

  Product(
      {required this.id,
      required this.name,
      required this.Description,
        required this.category,
      required this.price,
      this.discountPrice = 0,
       this.numberFavorite =0,
      this.numberView =0,
      this.numberBuy =0,
      required this.images,
      required this.colors,
      required this.rating});
}