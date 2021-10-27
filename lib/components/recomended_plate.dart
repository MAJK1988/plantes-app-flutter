import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:plantes_app/constants.dart';
import 'package:plantes_app/details/details_screem.dart';

class RecomdedPlates extends StatelessWidget {
  const RecomdedPlates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomededPlateCard(
            title: "Samantha",
            image: "assets/images/image_1.png",
            country: "Russia",
            price: 200,
            press: () {},
          ),
          RecomededPlateCard(
            title: "Samantha",
            image: "assets/images/image_2.png",
            country: "Russia",
            price: 200,
            press: () {},
          ),
          RecomededPlateCard(
            title: "Samantha",
            image: "assets/images/image_3.png",
            country: "Russia",
            price: 200,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomededPlateCard extends StatelessWidget {
  final String image, title, country;
  final Function press;
  final int price;
  const RecomededPlateCard({
    required this.country,
    required this.image,
    required this.title,
    required this.press,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
