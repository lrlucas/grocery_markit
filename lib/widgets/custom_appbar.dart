import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.menu,
                size: 40.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Markit',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30.0,
                  color: Colors.red,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Spacer(),
            _CustomAvatar(),
            _CustonIconNotification(),
          ],
        ),
      ),
    );
  }
}

class _CustonIconNotification extends StatelessWidget {
  const _CustonIconNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 35.0),
        child: Stack(
          children: [
            Icon(
              Icons.notifications,
              color: Color(0xffffbf00),
              size: 40.0,
            ),
            Positioned(
              top: 3.0,
              left: 17.0,
              child: Container(
                width: 22.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    '99',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CustomAvatar extends StatelessWidget {
  const _CustomAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: Container(
        // tamano y ancho del cuadro verde del avatar
        width: 90.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Icon(Icons.circle),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Text(
                '400',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
