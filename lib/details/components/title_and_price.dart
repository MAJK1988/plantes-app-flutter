import 'package:flutter/material.dart';
import 'package:plantes_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  final String title, country;
  final int price;
  const TitleAndPrice(
      {Key? key,
      required this.country,
      required this.price,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "$title\n",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
            TextSpan(
                text: country,
                style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300))
          ])),
          Text("$price\$",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
