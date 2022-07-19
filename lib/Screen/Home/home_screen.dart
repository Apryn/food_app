import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Simple Way to Find\nTasty Foods",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryText(
                    title: "All",
                    active: true,
                  ),
                  CategoryText(title: "Pizza"),
                  CategoryText(title: "Salad"),
                  CategoryText(title: "Burger"),
                  CategoryText(title: "Seafood"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryText extends StatelessWidget {
  CategoryText({
    Key? key,
    required this.title,
    this.active = false,
  }) : super(key: key);

  final String title;
  bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .button!
            .copyWith(color: active ? primary : Colors.grey),
      ),
    );
  }
}
