import 'package:flutter/material.dart';
import 'package:snapp_app/helpers/constants.dart';


class BoxSnappWidget extends StatelessWidget {
  const BoxSnappWidget({
    Key? key,
    required this.size,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final Size size;
  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xfff2f5f8),
            ),
            child: Image.asset(imagePath),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              title,
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.012,
              ),
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: kTextColor.withOpacity(.7),
              fontWeight: FontWeight.normal,
              fontSize: size.width * 0.0089,
            ),
          ),
        ],
      ),
    );
  }
}
