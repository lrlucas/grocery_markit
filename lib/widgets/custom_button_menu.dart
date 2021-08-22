import 'package:flutter/material.dart';

class CustomButtonMenu extends StatelessWidget {
  const CustomButtonMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Align(
          child: Container(
            height: 70,
            width: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 5),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/icon_home.png',
                    height: 26,
                    width: 25,
                  ),
                  Image.asset(
                    'assets/images/icon_settings.png',
                    height: 26,
                    width: 25,
                  ),
                  Image.asset(
                    'assets/images/icon_user.png',
                    height: 26,
                    width: 25,
                  ),
                  Container(
                    width: 125,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffFFB02A),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icon_bad.png',
                          height: 20,
                          width: 19,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
