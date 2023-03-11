import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:ressto/constans/colors.dart';
import 'package:ressto/models/food.dart';
import 'package:ressto/screens/detail/widget/detail_full.dart';
import 'package:ressto/screens/detail/widget/img_detail.dart';
import 'package:ressto/widget/appbar.dart';
import 'package:ressto/widget/item_makanan.dart';

class DetailMakanan extends StatelessWidget {
  final Food food;
  DetailMakanan(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustAppBar(
              Icons.arrow_back_ios_outlined, 

              Icons.favorite_outlined,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            ImgDetail(food),
            DetailFull(food),
          ],
        ),
      )
    );
  }
}