import 'package:acacus/helpers/consts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widgets/clickable_widgets/main_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.email});
  final String email;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    if (kDebugMode) {
      print("send otp to ${widget.email}");
    }
    super.initState();
  }

  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Text(
                "رمز التأكيد",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const Text(
                "قم بإدخال رمز التأكيد الذي تم ارساله للبريد ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                widget.email,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  // initState();
                },
                child: Text(
                  "اعادة ارسال",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      color: mainColor),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: size.width * 0.95,
              height: size.height * 0.2,
              child: Center(
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: PinCodeTextField(
                    enablePinAutofill: true,
                    cursorColor: mainColor,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                    ],
                    length: 6,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(13)),
                        disabledColor: mainColor.withOpacity(0.2),
                        inactiveColor: mainColor.withOpacity(0.2),
                        borderWidth: 0.8,
                        inactiveFillColor: mainColor.withOpacity(0.06),
                        errorBorderColor: Colors.red,
                        selectedColor: mainColor,
                        selectedFillColor: mainColor.withOpacity(0.06),
                        activeColor: mainColor,
                        shape: PinCodeFieldShape.box,
                        fieldHeight: size.width / 7,
                        fieldWidth: size.width / 7,
                        activeFillColor: mainColor.withOpacity(0.1)),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: true,
                    controller: otpController,
                    hintCharacter: '',
                    textStyle: TextStyle(color: mainColor, fontSize: 20),
                    hintStyle: const TextStyle(
                        fontSize: 24,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                    onCompleted: (v) async {
                      if (kDebugMode) {
                        print("Completed $v");
                      }
                    },
                    onChanged: (value) {
                      if (kDebugMode) {
                        print('The Code is $value');
                      }
                      if (mounted) setState(() {});
                    },
                    appContext: context,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              MainButton(
                  text: 'متابعة',
                  withBorder: false,
                  isloading: false,
                  onPressed: () {}),
              MainButton(
                  text: 'رجوع',
                  withBorder: true,
                  isloading: false,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
