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
              child: Image.asset('assets/images/menu.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
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

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Image.asset('assets/images/menu.png'),
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: Image.asset('assets/images/logo.png'),
      actions: [
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            width: 90,
            height: 15,
            decoration: BoxDecoration(
              color: Color(0xff47d17c),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile-avatar.png'),
                  ),
                  Text('400')
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Center(
            child: Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: Image.asset('assets/images/notificacion.png'),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
