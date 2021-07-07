import 'package:flutter/material.dart';
import 'package:grocery_markit/widgets/custom_appbar.dart';
import 'package:grocery_markit/widgets/custom_direction.dart';
import 'package:grocery_markit/widgets/custom_search.dart';

class HomePage extends StatelessWidget {
  static final routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Custom Appbar
          CustomAppbar(),

          // Location and direction widget
          CustomDirection(),

          // search widget
          CustomSearch()
        ],
      ),
    );
  }
}
