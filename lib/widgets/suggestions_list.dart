import 'package:flutter/material.dart';

class SuggestionsList extends StatelessWidget {
  SuggestionsList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> suggestionsProduct = [
    {'name': 'Brocoli', 'img': 'sugerencia_1.png'},
    {'name': 'Aguacate', 'img': 'sugerencia_2.png'},
    {'name': 'Tomate', 'img': 'sugerencia_3.png'},
    {'name': 'Tomate Verde', 'img': 'sugerencia_4.png'},
    {'name': 'Nopales', 'img': 'sugerencia_5.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 68,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: suggestionsProduct.length,
        itemBuilder: (_, index) {
          final product = suggestionsProduct[index];

          return Align(
            widthFactor: 1.2,
            child: Container(
              width: 68,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/${product['img']}',
                  height: 38,
                  width: 37,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
