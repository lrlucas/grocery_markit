import 'package:flutter/material.dart';
import 'package:grocery_markit/widgets/custom_appbar.dart';
import 'package:grocery_markit/widgets/custom_button_menu.dart';
import 'package:grocery_markit/widgets/custom_category_list2.dart';
import 'package:grocery_markit/widgets/custom_direction.dart';
import 'package:grocery_markit/widgets/custom_promotion_banner.dart';
import 'package:grocery_markit/widgets/custom_search.dart';
import 'package:grocery_markit/widgets/supermakers_list.dart';

class HomePage extends StatelessWidget {
  static final routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(),
      body: Stack(
        children: [
          SafeArea(
            bottom: false,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                // Custom Appbar mover esto al appbar del widget de scaffold mirar el video del guia
                // CustomAppbar(),

                // Location and direction widget
                CustomDirection(),

                // search widget
                CustomSearch(),
                SizedBox(
                  height: 30.0,
                ),

                // categories supermercado, farmacia, restaurantes viajes y boletos
                // CustomCategoriesList(),
                CustomCategoryList2(),

                // promotion banner
                CustomPromotionBanner(),

                // supermarkets
                SupermarketsList(),
                SizedBox(
                  height: 90,
                )

                // Expanded(
                //   child: ListView(
                //     children: [],
                //   ),
                // )
              ],
            ),
          ),
          CustomButtonMenu()
        ],
      ),
    );
  }
}
