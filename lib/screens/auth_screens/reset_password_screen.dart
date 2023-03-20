import 'package:acacus/screens/auth_screens/otp_screen.dart';
import 'package:acacus/widgets/clickable_widgets/main_button.dart';
import 'package:acacus/widgets/input_widgets/text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.125,
            ),
            Column(
              children: const [
                Text(
                  'اعادة تعيين كلمة السر',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "قم بادخال البريد الالكتروني لاستلام رمز التأكيد",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.185,
            ),
            TextFieldWidget(
              controller: emailController,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return "الرجاء ادخال البريد الالكتروني";
                }

                if (!value.contains('.com') || !value.contains('@')) {
                  return "الرجاء ادخال البريد الالكتروني بشكل صحيح";
                }

                return null;
              },
              hintText: 'ادخل البريد الالكتروني',
              label: 'البريد الالكتروني',
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
            Column(
              children: [
                MainButton(
                    text: 'متابعة',
                    withBorder: false,
                    isloading: false,
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => OtpScreen(
                                    email: emailController.text,
                                  )));
                    }),
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
      )),
    );
  }
}
