import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

class ProgressTracker extends StatelessWidget {
  final bool isDone;
  final String pageNum;

  const ProgressTracker(
      {super.key, required this.isDone, required this.pageNum});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        circles(pageNum, isDone),
        Container(
          height: 10,
          alignment: Alignment.center,
          child: DottedLine(
            dashLength: 5,
            dashGapLength: 1,
            lineThickness: 2,
            direction: Axis.horizontal,
            lineLength: 100,
            dashColor:
                pageNum == "2" && isDone ? primaryOrange : HexColor("#242830"),
          ),
        ),
        circles("2", isDone),
      ],
    );
  }

  Widget circles(String fig, bool isDone) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              pageNum == "2" && isDone ? primaryOrange : HexColor("#242830")),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: AppTextOverPass(
          text: fig,
          color: textLightColor,
        ),
      ),
    );
  }
}
