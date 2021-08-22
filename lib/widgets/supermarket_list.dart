import 'package:flutter/material.dart';

class SupermarketList extends StatelessWidget {
  const SupermarketList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            width: 10,
          ),
          // Soriana
          _SupermarketCard(
            image: 'assets/images/soriana-logo.png',
            title: 'Soriana',
            subtitle: '1hr o programada',
            color: Color(0xffFF303A),
            imageHeight: 21,
            imageWidth: 86,
          ),
          _SupermarketCard(
            image: 'assets/images/walmart-logo.png',
            title: 'Walmart',
            subtitle: '1hr o programada',
            color: Color(0xff2055C3),
            imageHeight: 22,
            imageWidth: 96,
          ),
          _SupermarketCard(
            image: 'assets/images/fresh-market-logo.png',
            title: 'The Fresh',
            subtitle: '1hr o programada',
            color: Color(0xff9CC422),
            imageHeight: 45,
            imageWidth: 45,
          ),
        ],
      ),
    );
  }
}

class _SupermarketCard extends StatelessWidget {
  final String image, title, subtitle;
  final Color color;
  final double imageWidth;
  final double imageHeight;
  _SupermarketCard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.imageWidth,
    required this.imageHeight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 17),
          child: Container(
            width: 150,
            height: 100,
            margin: EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              color: this.color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                this.image,
                width: this.imageWidth,
                height: this.imageHeight,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Container(
            margin: EdgeInsets.only(left: 12),
            child: Text(
              this.title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Text(
            this.subtitle,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
