import 'package:flutter/material.dart';
import 'package:grocery_markit/widgets/categories_product_list.dart';
import 'package:grocery_markit/widgets/custom_appbar.dart';
import 'package:grocery_markit/widgets/custom_button_menu.dart';
import 'package:grocery_markit/widgets/custom_direction.dart';
import 'package:grocery_markit/widgets/custom_promotion_banner.dart';
import 'package:grocery_markit/widgets/custom_search.dart';
import 'package:grocery_markit/widgets/recomended_list.dart';
import 'package:grocery_markit/widgets/vegetables_list.dart';

class CategoryDetailPage extends StatelessWidget {
  CategoryDetailPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(),
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              CustomDirection(),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_outlined),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              CustomSearch(),
              SizedBox(
                height: 30,
              ),
              CustomPromotionBanner(),
              SizedBox(
                height: 35,
              ),
              CategoriesProductList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Recomendados',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // recomended list
              RecomendedList(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
                child: Text(
                  'Verduras',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              VegetablesList(),
              SizedBox(
                height: 120,
              ),
            ],
          ),
          CustomButtonMenu(),
        ],
      ),
    );
  }
}
