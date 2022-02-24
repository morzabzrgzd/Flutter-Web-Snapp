import 'package:flutter/material.dart';
import 'package:persian_number_utility/src/extensions.dart';
import 'package:snapp_app/helpers/constants.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.75,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                right: size.width * 0.1,
                left: size.width * 0.05,
              ),
              color: kPrimeryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    bannerText,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.025,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Text(
                    bannerSubtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Vazir-Regular',
                      fontSize: size.width * 0.014,
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Container(
                    padding: EdgeInsets.only(left: size.width * 0.065),
                    width: double.infinity,
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.01,
                            ),
                            cursorColor: Colors.white,
                            cursorWidth: 1,
                            decoration: InputDecoration(
                              suffixIcon: Image.asset(
                                'assets/icons/circle.png',
                                scale: 2.5,
                              ),
                              hintText: '09xxxxx6789'.toPersianDigit(),
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: size.width * 0.01,
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.02),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.012,
                              vertical: size.height * 0.016,
                            ),
                            child: Text(
                              'ارسال لینک',
                              style: TextStyle(color: kPrimeryColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.08),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.white.withOpacity(.2),
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      elevation: 0,
                      side: const BorderSide(color: Colors.white, width: 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02,
                      ),
                      child: const Text(
                        'ورود به وب اپلیکیشن اسنپ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          topImage(),
        ],
      ),
    );
  }

  Expanded topImage() {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/image.jpg'),
          ),
        ),
      ),
    );
  }
}
