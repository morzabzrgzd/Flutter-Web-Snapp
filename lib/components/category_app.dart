import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snapp_app/helpers/constants.dart';


class CategoryAppItems extends StatelessWidget {
  const CategoryAppItems({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.subtitle,
    this.onTab,
  }) : super(key: key);

  final Size size;
  final String image;
  final String title;
  final String subtitle;
  final onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.23,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.012,
        vertical: size.height * 0.022,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onTab,
        child: Row(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: SvgPicture.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: size.width * 0.01),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: size.width * 0.013,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: kTextColor.withOpacity(.5)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
