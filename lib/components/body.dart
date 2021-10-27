import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantes_app/components/featured_plants.dart';
import 'package:plantes_app/components/header_with_search_box.dart';
import 'package:plantes_app/components/recomended_plate.dart';
import 'package:plantes_app/components/title_with_more.dart';
import 'package:plantes_app/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    //it will provie us total heuhgt an width of our screen
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSerch(size: size),
          TitleWithMore(
            title: "Recomended",
            press: () {},
          ),
          const RecomdedPlates(),
          TitleWithMore(press: () {}, title: "Featured plants"),
          const Featuredplants(),
        ],
      ),
    );
  }
}
