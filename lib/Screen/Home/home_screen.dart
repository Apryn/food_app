import 'package:flutter/material.dart';
import 'package:food_app/Screen/details_screen.dart';
import 'Components/category_text.dart';
import 'Components/food_card.dart';
import 'Components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topRight,
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
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
                  children: [
                    FoodCard(
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const DetailsScreen();
                        }));
                      },
                      title: "Burger Lambhuk",
                      place: "Lambhuk, Banda Aceh",
                      price: "\$20",
                      image: "assets/images/Burger.png",
                      cal: "450Kcal",
                    ),
                    FoodCard(
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DetailsScreen();
                          }));
                        },
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
      ),
    );
  }
}
