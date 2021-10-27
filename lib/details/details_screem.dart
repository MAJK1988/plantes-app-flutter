import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plantes_app/constants.dart';
import 'package:plantes_app/details/components/image_and_icon.dart';
import 'package:plantes_app/details/components/title_and_price.dart';

class DetailSreem extends StatelessWidget {
  const DetailSreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndIcons(size: size),
            const TitleAndPrice(
                title: "Angelica", country: "Russia", price: 400),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                    width: size.width * 0.5,
                    height: size.height * 0.1,
                    child: FlatButton(
                        color: kPrimaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20))),
                        onPressed: () {},
                        child: const Text(
                          "Buy Now",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ))),
                Expanded(
                    child: FlatButton(
                        onPressed: () {},
                        child: const Text(
                          "Description",
                          style: TextStyle(color: kPrimaryColor, fontSize: 16),
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
