import 'package:flutter/material.dart';
import 'package:grocery_markit/pages/category/category_page.dart';

class CustomCategoryList2 extends StatelessWidget {
  CustomCategoryList2({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> categories = [
    {'name': 'Supermercado', 'image': 'category1.png'},
    {'name': 'Farmacia', 'image': 'category2.png'},
    {'name': 'Restaurantes', 'image': 'category3.png'},
    {'name': 'Viajes, Boletos', 'image': 'category4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: SizedBox(
        height: size.height * .34,
        child: GridView(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 2.0,
            childAspectRatio: 1.4,
          ),
          children: List.generate(categories.length, (index) {
            final category = categories[index];
            return InkWell(
              onTap: () {
                // navegar a la pantalla de CategoryDetail
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CategoryDetailPage(
                      title: category['name'],
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/images/${category['image']}'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(category['name']),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
