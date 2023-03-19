import 'package:acacus/helpers/consts.dart';
import 'package:acacus/screens/auth_screens/login_screen.dart';
import 'package:acacus/screens/main_screens/home_screen.dart';
import 'package:acacus/widgets/clickable_widgets/main_button.dart';
import 'package:acacus/widgets/static_widgets/intro_card.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> listPagesViewModel = const [
      IntroCard(
          image: 'assets/intro1.png',
          title: 'اكتشف جمال بلادنا الحبيبة ليبيا 🇱🇾'),
      IntroCard(
          image: 'assets/intro2.png', title: 'احجز رحلات للمعالم المختلفة 🗿'),
      IntroCard(
          image: 'assets/intro3.png',
          title:
              'ترغب بزيارة مكان ما؟ تعرف على المطاعم والخدمات الموجودة بالقرب منه 🍔'),
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            SafeArea(
              child: Image.asset(
                'assets/blueLogo.png',
                height: size.height * 0.2,
                width: size.width * 0.33,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: IntroductionScreen(
                rawPages: listPagesViewModel,
                done: Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                    child: Text(
                      "دخول",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                next: Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                    child: Text(
                      "التالي",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                skip: Text(
                  "تخطي",
                  style:
                      TextStyle(color: mainColor, fontWeight: FontWeight.bold),
                ),
                showSkipButton: true,
                dotsDecorator: DotsDecorator(
                    size: const Size.square(6.0),
                    activeSize: const Size(30.0, 6.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: mainColor.withOpacity(0.5),
                    activeColor: mainColor),
                onSkip: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                onDone: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
