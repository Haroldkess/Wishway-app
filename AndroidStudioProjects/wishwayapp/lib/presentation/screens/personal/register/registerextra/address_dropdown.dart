import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

class AddressDropDown extends StatelessWidget {
  final String hint;
  const AddressDropDown({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: darkCard,
          shape: BoxShape.rectangle,
          border: Border.all(
              color: primaryOrange, width: 1, style: BorderStyle.solid),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButton(
            isExpanded: true,
            value: hint,
            hint: AppTextOverPass(text: hint),
            icon: Icon(Icons.arrow_drop_down),
            underline: Container(color: Colors.transparent),
            items: [
              DropdownMenuItem(
                value: hint,
                child: AppTextMulish(
                  text: "more",
                  color: HexColor("#929292"),
                  size: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              DropdownMenuItem(
                value: "",
                child: AppTextMulish(
                  text: "more",
                  color: HexColor("#929292"),
                  size: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
            onChanged: (val) {}),
      ),
    );
  }
}

class BusinessRegDropDown extends StatelessWidget {
  final String hint;
  final Color color;
  const BusinessRegDropDown(
      {super.key, required this.hint, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.rectangle,
          border: Border.all(color: color, width: 1, style: BorderStyle.solid),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButton(
            isExpanded: true,
            value: hint,
            hint: AppTextOverPass(text: hint),
            icon: Icon(Icons.arrow_drop_down),
            underline: Container(color: Colors.transparent),
            items: [
              DropdownMenuItem(
                value: hint,
                child: AppTextMulish(
                  text: "Select",
                  color: HexColor("#929292"),
                  size: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              DropdownMenuItem(
                value: "",
                child: AppTextMulish(
                  text: "more",
                  color: HexColor("#929292"),
                  size: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
            onChanged: (val) {}),
      ),
    );
  }
}
