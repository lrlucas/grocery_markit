import 'package:flutter/material.dart';

import 'add_remove_buttons.dart';
import 'suggestions_list.dart';

class ProductDetailButtonSheet extends StatelessWidget {
  const ProductDetailButtonSheet({Key? key, required this.product})
      : super(key: key);

  final dynamic product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          // Like & Close button
          _LikeAndCloseButton(),

          // Image
          Center(
            child: Container(
              width: 120,
              height: 120,
              child: Image.asset(
                'assets/images/${product['img']}',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 3 puntos
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                width: 12,
                height: 12,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          // Linea divisora
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 1,
                ),
                Text(
                  product['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Informacion',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sugerencias',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Lista de sugerencias
                SuggestionsList()
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          AddRemoveButtons(),
          Spacer(),
          Container(
            width: double.infinity,
            height: 70,
            color: Color(0xff181F48),
            child: Center(
              child: Text(
                'Agregar al pedido',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _LikeAndCloseButton extends StatelessWidget {
  const _LikeAndCloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              child: Center(
                child: Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
