import 'package:flutter/cupertino.dart';

class AppSpaces extends StatelessWidget {
  final double? height;
  final double? width;
  const AppSpaces({super.key,  this.height,  this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    
    );
  }
}
