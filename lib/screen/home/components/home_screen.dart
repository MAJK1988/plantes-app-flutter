import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantes_app/components/body.dart';
import 'package:plantes_app/components/my_bottom_bar.dart';
import 'package:plantes_app/constants.dart';
import 'package:plantes_app/details/details_screem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuilder(),
      body: const Body(),
      bottomNavigationBar: const MyBottomBar(),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar AppBarBuilder() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DetailSreem()));
        },
      ),
    );
  }
}
