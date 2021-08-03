import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCategoriesList extends StatelessWidget {
  const CustomCategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 35.0, left: 35.0),
          child: Row(
            children: [
              // box red
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.5,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xffd6d2e6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),

                    // SvgPicture.asset(
                    //   'assets/images/supermercado.svg',
                    //   // alignment: Alignment.center,
                    //   width: size.width * 0.5,
                    //   height: 101,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Supermercado',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              // box yellow
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.5,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffd6d2e6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Farmacia',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 35.0, left: 35.0),
          child: Row(
            children: [
              // box red
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.5,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xffd6d2e6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Restaurantes',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              // box yellow
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.5,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffd6d2e6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Viajes, Boletos',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
