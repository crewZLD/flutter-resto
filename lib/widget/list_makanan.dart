import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:ressto/constans/colors.dart';
import 'package:ressto/models/resto.dart';

class ListMakanan extends StatelessWidget {
  final int select;
  final Function CallBack;
  final Resto resto;
  ListMakanan(this.select, this.CallBack, this.resto);

  @override
  Widget build(BuildContext context) {
    final Category = resto.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => CallBack(index),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: select == index ? kPrimaryColor : Colors.white, 
            ),
            child: Text(
              Category[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ), 
        separatorBuilder: (_, index) => SizedBox(
          width: 20,
        ), 
        itemCount: Category.length),
    );
  }
}