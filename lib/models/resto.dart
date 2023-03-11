import 'package:ressto/models/food.dart';

class Resto {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Resto(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );
  static Resto generateRestaurant() {
    return Resto(
      'Warung Ibu Ani',
      '10-20 minutes',
      '1.0km',
      'Warung Makan',
      'assets/res_logo.png',
      'Best Soto in Slawi',
      4.9,
      {
        'Recommend': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFood(),
        'Mie': [],
        'Bakso': [],
      },
    );
  }
}
