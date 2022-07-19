import 'package:flutter/material.dart';
import 'package:food_app/theme.dart';

import 'Components/category_text.dart';
import 'Components/search_bar.dart';

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
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
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
            const SearchBar(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  FoodCard(
                    title: "Burger Lambhuk",
                    place: "Lambhuk, Banda Aceh",
                    price: "\$20",
                    image: "assets/images/Burger.png",
                    cal: "450Kcal",
                  ),
                  FoodCard(
                      title: "Pizza Lambhuk",
                      place: "Ajun, Banda Aceh",
                      price: "\$50",
                      image: "assets/images/Pizza.png",
                      cal: "550Kcal"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.title,
    required this.place,
    required this.cal,
    required this.image,
    required this.price,
  }) : super(key: key);

  final String title, place, cal, image, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 300,
      width: 200,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 280,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: subheadline),
            ),
          ),
          Container(
            height: 150,
            width: 150,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: primary),
          ),
          Positioned(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            ),
          ),
          Positioned(
            right: 10,
            top: 50,
            child: Text(
              price,
              style:
                  const TextStyle(color: primary, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              top: 160,
              left: 40,
              child: Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(place,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: primary,
                        ),
                        Icon(Icons.star, color: primary),
                        Icon(Icons.star, color: primary),
                        Icon(Icons.star, color: primary),
                        Icon(Icons.star, color: Colors.white),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      cal,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
