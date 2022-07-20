import 'package:flutter/material.dart';
import 'package:food_app/theme.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.title,
    required this.place,
    required this.cal,
    required this.image,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String title, place, cal, image, price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 10),
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
                    borderRadius: BorderRadius.circular(20),
                    color: subheadline),
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
                style: const TextStyle(
                    color: primary, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
                top: 160,
                left: 40,
                child: SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
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
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
