import 'package:flutter/material.dart';
import 'package:grocery_markit/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  static final routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Custom Appbar
          CustomAppbar()
        ],
      ),
    );
  }
}
