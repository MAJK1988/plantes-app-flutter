import 'package:flutter/material.dart';
import 'package:plantes_app/constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  final String title;
  const TitleWithCustomUnderline({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding * 0.25),
      child: SizedBox(
        height: 32,
        child: Stack(
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),
                ))
          ],
        ),
      ),
    );
  }
}
