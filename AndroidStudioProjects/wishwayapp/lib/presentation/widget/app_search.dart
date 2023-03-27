import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppSearch extends StatelessWidget {
  final Color? hintColor;
  final String? hint;
  final Widget? suffix;
  final Color? backColor;
  const AppSearch(
      {super.key, this.hint, this.hintColor, this.suffix, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      //width: 383,
      decoration: BoxDecoration(
          color: backColor,
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(64.0))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "     $hint",
                hintStyle: GoogleFonts.overpass(color: hintColor, fontSize: 14),
                suffixIcon: suffix,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent))),
          ),
        ),
      ),
    );
  }
}
