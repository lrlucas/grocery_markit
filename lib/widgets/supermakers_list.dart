import 'package:flutter/material.dart';
import 'package:grocery_markit/widgets/supermarket_list.dart';

class SupermarketsList extends StatelessWidget {
  const SupermarketsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 21.0),
      child: Container(
        height: 259,
        width: double.infinity,
        // color: Color(0xffFAF8ED),
        color: Color(0xFFF8F2D6),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 26,
                    left: 21,
                  ),
                  child: Text(
                    'Supermercados',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 26,
                    right: 20.0,
                  ),
                  child: Text(
                    'Ver mas',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            // logos
            SupermarketList()
          ],
        ),
      ),
    );
  }
}
