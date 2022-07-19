import 'package:flutter/material.dart';
import 'package:food_app/theme.dart';

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