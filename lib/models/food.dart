class Food{
  String imageUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> komposisi;
  String tentang;
  bool hightLight;
  Food(
    this.imageUrl,
    this.desc,
    this.name,
    this.waitTime,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.komposisi,
    this.tentang,
    {this.hightLight = false});
  static List<Food> generateRecommendFoods(){
    return[
      Food(
        'assets/dish1.png', 
        'Rekomendasi soto terbaik', 
        'Soto Tegal', 
        '5-10 minutes', 
        4.9, 
        '120 kcal', 
        10000, 
        1, 
        [
          {
            'Mie' : 'assets/ingre1.png',
          },
          {
            'shimp' : 'assets/ingre2.png',
          },
          {
            'telur' : 'assets/ingre3.png',
          },
          {
            'scale' : 'assets/ingre4.png',
          },
        ],
        'Terlihat simple, namun makanan tersebut sangat enak',
        hightLight: true
      ),
      Food(
          'assets/dish2.png',
          'Rekomendasi soto terbaik',
          'Sate Ayam',
          '5-10 minutes',
          4.9,
          '120 kcal',
          10000,
          1,
          [
            {
              'Mie': 'assets/ingre1.png',
            },
            {
              'shimp': 'assets/ingre2.png',
            },
            {
              'telur': 'assets/ingre3.png',
            },
            {
              'scale': 'assets/ingre4.png',
            },
          ],
          'Terlihat simple, namun makanan tersebut sangat enak',
          hightLight: true),
    ];
  }

  static List<Food> generatePopularFood(){
    return [
      Food(
        'assets/dish4.png', 
        'Populer di Slawi', 
        'Chicken Tomate', 
        '10 minutes', 
        5.0, 
        '200 kcal', 
        20000, 
        0, 
        [
            {
              'Mie': 'assets/ingre1.png',
            },
            {
              'shimp': 'assets/ingre2.png',
            },
            {
              'telur': 'assets/ingre3.png',
            },
            {
              'scale': 'assets/ingre4.png',
            },
          ],
          'Terlihat simple, namun makanan tersebut sangat enak',
          hightLight: true
      ),
      Food(
          'assets/dish2.png',
          'Populer di Slawi',
          'Chicken Tomate',
          '10 minutes',
          5.0,
          '200 kcal',
          20000,
          0,
          [
            {
              'Mie': 'assets/ingre1.png',
            },
            {
              'shimp': 'assets/ingre2.png',
            },
            {
              'telur': 'assets/ingre3.png',
            },
            {
              'scale': 'assets/ingre4.png',
            },
          ],
          'Terlihat simple, namun makanan tersebut sangat enak',
          hightLight: true),
    ];
  }
}