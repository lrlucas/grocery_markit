import 'package:flutter/material.dart';

class RecomendedList extends StatelessWidget {
  RecomendedList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> recomendedProduct = [
    {
      'title': 'Santa Clara Leche Deslactosada',
      'price': '30',
      'img': 'recomended_1.png',
    },
    {
      'title': 'Carne Molina Pavo',
      'price': '142',
      'img': 'recomended_2.png',
    },
    {
      'title': 'Arbol Verde Carne',
      'price': '49',
      'img': 'recomended_3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: List.generate(recomendedProduct.length, (index) {
          final product = recomendedProduct[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 18,
              ),
              Container(
                width: 150,
                height: 100,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: index == 0 ? Color(0xffEAEAFD) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/${product['img']}',
                    width: 96,
                    height: 96,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 3,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  '\$us${double.parse(product['price'].toString()).toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  product['title'],
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
