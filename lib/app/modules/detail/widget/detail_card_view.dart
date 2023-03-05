import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../style/app_color.dart';

class DetailCardView extends StatelessWidget {
  const DetailCardView({Key? key, required this.leftKey, required this.leftValue, required this.rightKey, required this.rightValue}) : super(key: key);
  final String leftKey;
  final String leftValue;
  final String rightKey;
  final String rightValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColor.greyLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SizedBox(
        width: Get.width,
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 30),
                  child: Text(
                    leftKey,
                    style:
                    TextStyle(fontSize: 20, color: AppColor.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, left: 30, bottom: 15),
                  child: Text(
                    leftValue,
                    style: TextStyle(
                        fontSize: 20, color: AppColor.black),
                  ),
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
                  child: Text(
                    rightKey,
                    style:
                    TextStyle(fontSize: 20, color: AppColor.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, left: 30, bottom: 15, right: 30),
                  child: Text(
                    rightValue,
                    style: TextStyle(
                        fontSize: 20, color: AppColor.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),);
  }
}
