import 'package:flutter/material.dart';

class CustomPromotionBanner extends StatelessWidget {
  CustomPromotionBanner({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> promotionList = [
    {
      'title': 'Las mejores entregas a tu domicilio',
      'subtitle': 'Envio Gratis',
      'image': 'promotion_banner_1.png',
      'color': 0xff47D17C,
    },
    {
      'title': 'Las mejores entregas a tu negocio',
      'subtitle': 'Envio Gratis Fin de semana',
      'image': 'promotion_banner_1.png',
      'color': 0xff6C47D1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Row(
          children: List.generate(promotionList.length, (index) {
            final promotion = promotionList[index];
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                width: 381,
                height: 101,
                decoration: BoxDecoration(
                  color: Color(promotion['color']),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Container(
                              width: 200,
                              height: 50,
                              child: Text(
                                promotion['title'],
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              promotion['subtitle'],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: 100,
                        height: 101,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage(
                              "assets/images/${promotion['image']}",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
