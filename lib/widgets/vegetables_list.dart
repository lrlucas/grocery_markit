import 'package:flutter/material.dart';
import 'package:grocery_markit/widgets/product_detail_buttonsheet.dart';

class VegetablesList extends StatelessWidget {
  VegetablesList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> vegetables = [
    {
      'title': 'Habanero amarillo por kiloss',
      'kgPrice': 55,
      'unitPrice': 5.59,
      'disccount': 20,
      'img': 'vegetable_1.png',
    },
    {
      'title': 'Tomate verde',
      'kgPrice': 35.9,
      'unitPrice': 3.59,
      'disccount': 0,
      'img': 'vegetable_2.png',
    },
    {
      'title': 'Nopales',
      'kgPrice': 22.5,
      'unitPrice': 3.15,
      'disccount': 0,
      'img': 'vegetable_3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: List.generate(vegetables.length, (index) {
          final product = vegetables[index];

          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => ProductDetailButtonSheet(
                  product: product,
                ),
              );
            },
            child: Container(
              width: 125,
              height: 150,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/${product['img']}',
                      width: 85,
                      height: 85,
                    ),
                  ),
                  if (product['disccount'] > 0)
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        width: 44,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color(0xffFFB02A),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            '${product['disccount'].toString()}%',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0xff47D17C),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 10,
                    right: 10,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${product['title']}',
                            style: TextStyle(
                              fontSize: 9,
                              color: Color(0xff80899B),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '\$${double.parse(product['unitPrice'].toString()).toStringAsFixed(2)}/u-\$${double.parse(product['kgPrice'].toString()).toStringAsFixed(2)}/Kg',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
