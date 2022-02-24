import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snapp_app/helpers/constants.dart';
import 'package:snapp_app/models/categoris_model.dart';

class AppbarSnapp extends StatelessWidget {
  const AppbarSnapp({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: size.height * 0.15,
      width: double.infinity,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset('assets/icons/snapp.svg'),
          ),
          Row(
            children: List.generate(
              categoty.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: size.width * 0.02),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    categoty[index].title,
                    style: TextStyle(
                      fontFamily: 'Vazir-Regular',
                      color: kTextColor,
                      fontSize: size.width * 0.012,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
