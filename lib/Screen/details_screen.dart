import 'package:flutter/material.dart';
import 'package:food_app/theme.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(10),
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: primary,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Burger.png"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Burger Lambhuk\n",
                              style: Theme.of(context).textTheme.headline5),
                          const TextSpan(
                              text: "Lambhuk, Banda Aceh",
                              style: TextStyle(color: subheadline)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: headline,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        "\$20",
                        style: TextStyle(
                            color: primary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: const [
                          Text(
                            "Add to bag",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Stack(children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: headline),
                        child: const Icon(
                          Icons.backpack,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: primary),
                            child: const Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ))
                    ])
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
