import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';

import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';

class PinCodeVerification extends StatefulWidget {
  final String? phoneNumber;

  const PinCodeVerification({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  _PinCodeVerificationState createState() => _PinCodeVerificationState();
}

class _PinCodeVerificationState extends State<PinCodeVerification> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
          child: PinCodeTextField(
            //backgroundColor: HexColor("#161A22"),

            appContext: context,
            pastedTextStyle: TextStyle(
              color: textLightColor,
              fontWeight: FontWeight.bold,
            ),
            length: 4,
            obscureText: false,
            //obscuringCharacter: '*',
            // obscuringWidget: const FlutterLogo(
            //   size: 24,
            // ),
            blinkWhenObscuring: true,
            animationType: AnimationType.fade,
            validator: (v) {
              if (v!.length < 3) {
                return "I'm from validator";
              } else {
                return null;
              }
            },
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 56,
              fieldWidth: 56,
              activeFillColor: HexColor("#161A22"),
              inactiveColor: HexColor("#161A22"),
              inactiveFillColor: HexColor("#161A22"),
              
            ),
            cursorColor: primaryOrange,
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: true,
            errorAnimationController: errorController,
            controller: textEditingController,
            keyboardType: TextInputType.number,
            boxShadows: const [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.black12,
                blurRadius: 10,
              )
            ],
            onCompleted: (v) {
              debugPrint("Completed");
            },
            // onTap: () {
            //   print("Pressed");
            // },
            onChanged: (value) {
              debugPrint(value);
              setState(() {
                currentText = value;
              });
            },
            beforeTextPaste: (text) {
              debugPrint("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          )),
    );
  }
}
