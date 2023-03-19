import 'package:acacus/helpers/consts.dart';
import 'package:acacus/widgets/input_widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hidePass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Image.asset('assets/signInBG.png'),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "مرحبا بك في تطبيق اكاكوس!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ))
          ],
        ),
        TextFieldWidget(
          label: 'البريد الالكتروني',
          hintText: "ادخل البريد الالكتروني",
          controller: emailController,
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'الرجاء ادخال البريد الالكتروني';
            }

            if (!value.contains(".com")) {
              return 'الرجاء ادخال البريد الالكتروني بشكل صحيح';
            }

            return null;
          },
        ),
        TextFieldWidget(
          obSecureText: hidePass,
          perfix: GestureDetector(
              onTap: () {
                setState(() {
                  hidePass = !hidePass;
                });
              },
              child: Icon(
                hidePass ? Icons.visibility : Icons.visibility_off,
                color: Colors.black,
              )),
          label: 'كلمة المرور',
          hintText: "ادخل كلمة المرور",
          controller: passwordController,
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'الرجاء ادخال كلمة المرور';
            }

            if (value.length < 8) {
              return 'كلمة المرور يجب ان تكون اكثر من 8 احرف';
            }

            return null;
          },
        )
      ],
    ));
  }
}
