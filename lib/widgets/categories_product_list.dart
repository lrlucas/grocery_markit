import 'package:flutter/material.dart';

class CategoriesProductList extends StatelessWidget {
  CategoriesProductList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> categoriesProduct = [
    {'text': 'Verduras', 'img': 'zanahoria.png'},
    {'text': 'Lacteos', 'img': 'milk.png'},
    {'text': 'Carne', 'img': 'meat-3.png'},
    {'text': 'Bebidas', 'img': 'liquor.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.transparent,
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: ListView(
        physics: BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: List.generate(categoriesProduct.length, (index) {
          final category = categoriesProduct[index];
          return Container(
            width: 120,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(27),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/${category['img']}',
                  width: 23,
                  height: 21,
                ),
                SizedBox(
                  width: 7.3,
                ),
                Text(
                  category['text'],
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
