import 'package:flutter/material.dart';

class CustomDirection extends StatelessWidget {
  const CustomDirection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Spacer(),
          Container(
            width: 240,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFDEE2E9),
              borderRadius: BorderRadius.all(Radius.circular(45.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.location_on,
                  size: 28.0,
                ),
                Text(
                  'Refugio Sta Fe 202',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff646E7C),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 28.0,
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
