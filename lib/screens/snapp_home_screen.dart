import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/src/extensions.dart';
import 'package:snapp_app/components/appbar_snapp.dart';
import 'package:snapp_app/components/box_snapp.dart';
import 'package:snapp_app/components/category_app.dart';
import 'package:snapp_app/components/slider_snapp.dart';
import 'package:snapp_app/components/top_banner.dart';
import 'package:snapp_app/controllers/snapp_home_controlller.dart';
import 'package:snapp_app/helpers/constants.dart';
import 'package:snapp_app/models/categoris_model.dart';

// ignore: must_be_immutable
class SnappHomeSCreen extends StatelessWidget {
  List matketImages = [
    'assets/images/playStore.png',
    'assets/images/bazaar.png',
    'assets/images/SnappPwa.png',
    'assets/images/SibApp.png',
    'assets/images/iApps.png'
  ];

  List sliderImage = [
    'assets/images/slid1.jpg',
    'assets/images/slide2.jpg',
    'assets/images/slide3.jpg',
    'assets/images/slid4.jpg',
  ];

  var controller = Get.put(SnappHomeController());

  SnappHomeSCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              AppbarSnapp(size: size),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.15,
                  ),
                  child: ScrollConfiguration(
                    behavior: MyCustomScrollBehavior(),
                    child: ListView(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              TopBanner(size: size),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  matketImages.length,
                                  (index) => Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02,
                                        vertical: size.height * 0.08),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Image.asset(
                                        matketImages[index],
                                        scale: 3.7,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // child: ,
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.07,
                            ),
                            child: Text(
                              'یک اپلیکیشن، برای تمام نیازها',
                              style: TextStyle(
                                color: kTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.025,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CategoryAppItems(
                              onTab: () {},
                              size: size,
                              image: 'assets/icons/car.svg',
                              subtitle: 'امکان درخواست آنلاین خودرو با اسنپ',
                              title: 'تاکسی اینترنتی',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              onTab: () {},
                              size: size,
                              image: 'assets/icons/food.svg',
                              subtitle: 'سفارش غذا، نان و شیرینی با اسنپ',
                              title: 'سفارش غذا آنلاین',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              onTab: () {},
                              size: size,
                              image: 'assets/icons/doctor.svg',
                              subtitle: 'درمان با اسنپ',
                              title: 'دکتر',
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CategoryAppItems(
                              onTab: () {},
                              size: size,
                              image: 'assets/icons/market.svg',
                              subtitle: 'تهیه اقلام روزانه با اسنپ',
                              title: 'سوپر مارکت آنلاین',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              onTab: () {},
                              size: size,
                              image: 'assets/icons/food.svg',
                              subtitle: 'حمل و نقل با اسنپ',
                              title: 'اسباب کشی منزل',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              onTab: () {},
                              size: size,
                              image: 'assets/icons/bike.svg',
                              subtitle: 'حمل و نقل با اسنپ',
                              title: 'پیک موتوری',
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CategoryAppItems(
                              onTab: () {},
                              size: size,
                              image: 'assets/icons/doctor.svg',
                              subtitle: 'گردشگری با اسنپ',
                              title: 'بلیت اتوبوس',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/bike.svg',
                              subtitle: 'خرید از فروشگاه های معتبر شهر',
                              title: 'فروشگاه',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/car.svg',
                              subtitle: 'گردشگری با اسنپ',
                              title: 'رزرو اقامتگاه',
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/food.svg',
                              subtitle: 'گردشگری با اسنپ',
                              title: 'بلیت پرواز داخلی',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/market.svg',
                              subtitle: 'گردشگری با اسنپ',
                              title: 'رزرو هتل',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/doctor.svg',
                              subtitle: 'پخش زنده شبکه های تلویزیونی',
                              title: 'نمایش',
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/car.svg',
                              subtitle: 'گردشگری با اسنپ',
                              title: 'بلیت پرواز خارجی',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/bike.svg',
                              subtitle: 'پرداخت با اسنپ',
                              title: 'پرداخت قبض',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/market.svg',
                              subtitle: 'گردشگری با اسنپ',
                              title: 'بلیت قطار',
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/doctor.svg',
                              subtitle: 'خدمات غیرحضوری بورس',
                              title: 'سرمایه گذاری',
                            ),
                            SizedBox(width: size.width * 0.02),
                            CategoryAppItems(
                              size: size,
                              image: 'assets/icons/food.svg',
                              title: 'اسنپ! کلاب',
                              subtitle: 'باشگاه مشتریان اسنپ!',
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.08),
                        SliderSnapp(
                          size: size,
                          sliderImage: sliderImage,
                          controller: controller,
                        ),
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: size.height * 0.6,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/hand.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 45, vertical: 40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'سوپر اپ اسنپ: پاسخی به تمام نیاز ها',
                                        style: TextStyle(
                                          color: kTextColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.015,
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                      Text(
                                        """اسنپ، اولین تاکسی اینترنتی ایران، بعد از پنج سال فعالیت در حوزه ی تردد شهری، به یک 
سوپراپ با خدمات متنوع تبدیل شد. سوپذ اپ استپ راه حل جدید و ساده است  که با 
استفاده از آن تنها با یک اپلیکیشن می توانید علاوه بر درخواست خودرو، موتور و وانت از
خدمات متعددی از جمله سفارش غذا، پزشک و مشاور آنلاین، خرید از سوپرمارکت ها و
فروشگاه ها، اسباب کشی، خرید بلیط (هواپیما، اتوبوس، قطار) رزرو هتل، پرداخت قبض و
خرید شارز استفاده کنید.""",
                                        style: TextStyle(
                                          color: kTextColor.withOpacity(.8),
                                          fontWeight: FontWeight.w100,
                                          fontSize: size.width * 0.01,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: size.height * 0.36,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: -100,
                                child: SizedBox(
                                  height: 500,
                                  width: size.width,
                                  // color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      BoxSnappWidget(
                                        size: size,
                                        subtitle:
                                            'برای استفاده از هر کدام از خدمات سوپر اپ اسنپ کافی است وارد\n اپلیکیشن اسنپ شوید و روی آیکون مورد نظر بزنید.',
                                        imagePath: 'assets/images/easy.png',
                                        title: 'آسان',
                                      ),
                                      BoxSnappWidget(
                                        size: size,
                                        subtitle:
                                            'قرار گرفتن خدمات مختلف در یک پلت فرم به صرفه جویی در زمان کمک\n می کند. سوپراپ اسنپ پاسخی سریع یه نیاز های روزمره ی شماست.',
                                        imagePath: 'assets/images/fast.png',
                                        title: 'سریع',
                                      ),
                                      BoxSnappWidget(
                                        size: size,
                                        subtitle:
                                            'سوپراپ اسنپ علاوه بر زمان در هزینه های شما نیز صرفه جویی می کند و\n بهترین خدمات را با قیمتی منطقی دریافت کنید.',
                                        imagePath: 'assets/images/eco.png',
                                        title: 'به صرفه',
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: size.height * 0.33,
                          child: Column(
                            children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.05,
                                  ),
                                  child: Text(
                                    'در کمتر از 10 دقیقه ثبت نام کنید و به ناوگان اسنپ بپیوندید.'
                                        .toPersianDigit(),
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.025,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.01,
                                  ),
                                  child: Text(
                                    'بدون نیاز به مراجعه ی حضوری، از طریق این صفحه، تمام مراحل ثبت نام را اینترنتی انجام دهید',
                                    style: TextStyle(
                                      color: kTextColor.withOpacity(.7),
                                      fontWeight: FontWeight.w100,
                                      fontSize: size.width * 0.014,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.05,
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xff00db75),
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 10,
                                        ),
                                        child: Text(
                                          'ثبت نام رانندگان',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: size.width * 0.012,
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 150,
                            vertical: 40,
                          ),
                          width: double.infinity,
                          height: size.height * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 150,
                            vertical: 20,
                          ),
                          width: double.infinity,
                          height: size.height * 0.3,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ItemBoxWidget(
                                    size: size,
                                    imagePath: 'assets/images/daramad.png',
                                    title:
                                        'درآمد تضمینی + پاداش های ماهانه و هفتگی',
                                    subtitle:
                                        'با فعالیت در ناوگان اسنپ، علاوه بر کسب درآمد مستمر و\nامکان تسویه در لحظه می توانید با شرکت در طرح های\nتشویقی مختلف، درآمد خود را افزایش دهید.',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ItemBoxWidget(
                                    size: size,
                                    imagePath: 'assets/images/hour.png',
                                    title: 'ساعت کاری دلخواه',
                                    subtitle:
                                        'فعالیت در ناوگان اسنپ محدودیت زمانی ندارد و\nمی توانید فعالیت خود را در هر ساعت شبانه روز و\nمتناسب با برنامه ی زندگی تان شخصی سازی کنید.',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 0),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 150,
                            vertical: 20,
                          ),
                          width: double.infinity,
                          height: size.height * 0.3,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ItemBoxWidget(
                                    size: size,
                                    imagePath: 'assets/images/benefits.png',
                                    title: 'مزایا و خدمات باشگاه رانندگان',
                                    subtitle:
                                        'در باشگاه رانندگان اسنپ می توانید از تسهیلات و خدمات\nمتنوعی از جمله خدمات خودرویی، خدمات درمانی و\nهمچنین خدمات رفاهی و آموزشی بهره مند شوید.',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ItemBoxWidget(
                                    size: size,
                                    imagePath: 'assets/images/carfix.png',
                                    title: 'کارفیکس',
                                    subtitle:
                                        'باشگاه رانندگان اسنپ به تازگی سرویس جدید <<اسنپ\nکارفیکس>> را برای سهولت دسترسی کاربران راننده به انواع\nخدمات خودرویی راه اندازی کرده است.',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          color: Colors.white,
                          height: 100,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Row(
                                  children: List.generate(
                                    categoty.length,
                                    (index) => Padding(
                                      padding: EdgeInsets.only(
                                          right: size.width * 0.02),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Text(
                                          categoty[index].title,
                                          style: TextStyle(
                                            fontFamily: 'Vazir-Regular',
                                            color: kTextColor,
                                            fontSize: size.width * 0.011,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        FeatherIcons.twitter,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: InkWell(
                                        onTap: () {},
                                        child: const Icon(
                                          FeatherIcons.instagram,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        FeatherIcons.youtube,
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemBoxWidget extends StatelessWidget {
  const ItemBoxWidget({
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
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            imagePath,
          ),
        ),
        Flexible(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.012,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.01,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
