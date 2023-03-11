import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ressto/constans/colors.dart';
import 'package:ressto/models/food.dart';

class DetailFull extends StatelessWidget {
  final Food food;
  DetailFull(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kBackground,
      child: Column(
        children: [
          Text(food.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 15),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                Icons.access_time_outlined,
                Colors.blue,
                food.waitTime
              )
            ],
          )
        ],
      ),
    );
  }
  Widget _buildIconText(IconData icon, Color color,String text){
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16
          ),
        )
      ],
    );
  }
}