import 'package:flutter/material.dart';

class CustomDirection extends StatelessWidget {
  const CustomDirection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          Spacer(),
          Container(
            width: 240,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffe2e5ef),
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
