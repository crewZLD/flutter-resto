import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:ressto/models/resto.dart';
import 'package:ressto/screens/detail/detail_makanan.dart';
import 'package:ressto/widget/item_makanan.dart';

class ListMakananView extends StatelessWidget {
  final int select;
  final Function CallBack;
  final PageController pageController;
  final Resto resto;

  ListMakananView(this.select,
  this.CallBack,
  this.pageController,
  this.resto
  );

  @override
  Widget build(BuildContext context) {
    final category = resto.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => CallBack(index),
        children:
          category.map((e) => 
          ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailMakanan(
                                resto.menu[category[select]]![index])
                  )
                );
              },
              child: ItemMakanan(
                resto.menu[category[select]]![index]
              ),
            ), 
            separatorBuilder: (_, index) => SizedBox(height: 15), 
            itemCount: resto.menu[category[select]]!.length)).toList()
        ,
      ),
    );
  }
}