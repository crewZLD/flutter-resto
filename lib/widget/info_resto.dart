import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:ressto/constans/colors.dart';
import 'package:ressto/models/resto.dart';

class InfoResto extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final resto = Resto.generateRestaurant();
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resto.name,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(resto.waitTime,
                        style: TextStyle(color: Colors.white,
                        ),
                        )),
                        SizedBox(width: 10),
                      Text(resto.distance,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      ),
                      SizedBox(width: 10),
                      Text(resto.label,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      )
                    ],
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(resto.logoUrl, width: 80),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('"${resto.desc}"',
              style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Icon(Icons.star_outline,
                  color: kPrimaryColor,),
                  Text('${resto.score}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 15
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}