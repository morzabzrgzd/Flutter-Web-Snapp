import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:snapp_app/controllers/snapp_home_controlller.dart';

// ignore: must_be_immutable
class SliderSnapp extends StatelessWidget {
  var co = Get.put(SnappHomeController());
   SliderSnapp({
    Key? key,
    required this.size,
    required this.sliderImage,
    required this.controller,
  }) : super(key: key);

  final Size size;
  final List sliderImage;
  final SnappHomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: size.width * 0.1,
        right: size.width * 0.1,
        top: size.height * 0.12,
        bottom: size.height * 0.09,
      ),
      color: Colors.white,
      height: size.height * 0.65,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          InkWell(
            onTap: () {},
            child: PageView.builder(
              itemCount: sliderImage.length,
              onPageChanged: (value) {
                controller.changeSlider(value);
                

              },
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    sliderImage[index],
                    fit: BoxFit.fitWidth,
                  ),
                );
              },
            ),
          ),
          Positioned(
            // left: 0,
            bottom: 10,
            // right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    sliderImage.length,
                    (index) => Container(
                      height: 8,
                      width: 8,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3,
                      ),
                      decoration: BoxDecoration(
                        color: controller.selectedIndexSlider.value == index
                            ? Colors.white
                            : Colors.white38,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
