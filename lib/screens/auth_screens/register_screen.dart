import 'package:flutter/material.dart';

import '../../widgets/clickable_widgets/main_button.dart';
import '../../widgets/input_widgets/text_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/sighUpBG.png',
                  width: size.width,
                  height: size.height * 0.4,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "مرحبا بك في تطبيق اكاكوس!",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "قم بانشاء حساب للاستفادة من مزايا التطبيق",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFieldWidget(
                    label: 'البريد الإلكتروني',
                    controller: emailController,
                    hintText: 'أدخل البريد الالكتروني',
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "الرجاء ادخال البريد الالكتروني";
                      }
                      return null;
                    },
                  ),
                  TextFieldWidget(
                    label: 'كلمة المرور',
                    hintText: 'أدخل كلمة المرور',
                    controller: passwordController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "الرجاء ادخال كلمة المرور";
                      }
                      return null;
                    },
                  ),
                  TextFieldWidget(
                    label: 'تأكيد كلمة المرور',
                    hintText: 'أدخل كلمة المرور مرة اخرى',
                    controller: confirmPasswordController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "الرجاء ادخال كلمة المرور";
                      }
                      if (value != passwordController.text) {
                        return "كلمة المرور غير متطابقة";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  MainButton(
                      text: "إنشاء حساب",
                      withBorder: false,
                      isloading: false,
                      onPressed: () {}),
                  MainButton(
                      text: "لديك حساب؟ سجل الدخول",
                      withBorder: true,
                      isloading: false,
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
