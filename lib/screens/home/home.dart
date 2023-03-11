import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ressto/constans/colors.dart';
import 'package:ressto/constans/colors.dart';
import 'package:ressto/models/resto.dart';
import 'package:ressto/widget/appbar.dart';
import 'package:ressto/widget/info_resto.dart';
import 'package:flutter/material.dart';
import 'package:ressto/widget/list_makanan.dart';
import 'package:ressto/widget/list_makanan_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var select = 0;
  final pageController = PageController();
  final resto = Resto.generateRestaurant();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          InfoResto(),
          ListMakanan(select, 
          (int index){
            setState(() {
              select = index;
            });
            pageController.jumpToPage(index);
          }, resto),
          Expanded(
            child: ListMakananView(
              select,
              (int index){
                setState(() {
                  select = index;
                });
              },
              pageController,
              resto,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: resto.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8)
                ),
                activeDotDecoration: DotDecoration(
                  width: 10,
                  height: 10,
                  color: kBackground,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: DotBorder(
                    color: kPrimaryColor,
                    padding: 2,
                    width: 2,
                  )
                )
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),

          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: Icon(Icons.shopping_bag_outlined,color: Colors.black, size: 30,),
      ),
    );
  }
}