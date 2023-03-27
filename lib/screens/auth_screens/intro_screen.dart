import 'package:acacus/helpers/consts.dart';
import 'package:acacus/main.dart';
import 'package:acacus/screens/auth_screens/login_screen.dart';
import 'package:acacus/screens/main_screens/tabs_screen.dart';
import 'package:acacus/widgets/static_widgets/intro_card.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> listPagesViewModel = [
      IntroCard(
          image: 'assets/intro1.png',
          title: AppLocalizations.of(context)!.ione),
      IntroCard(
          image: 'assets/intro2.png',
          title: AppLocalizations.of(context)!.itwo),
      IntroCard(
          image: 'assets/intro3.png',
          title: AppLocalizations.of(context)!.ithree),
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text(AppLocalizations.of(context)!.localeName),
          onPressed: () {
            AppLocalizations.of(context)!.localeName == 'ar'
                ? MyApp.setLocale(context, const Locale('en'))
                : MyApp.setLocale(context, const Locale('ar'));
          }),
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
                    color: mainColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  child: Text(
                    AppLocalizations.of(context)!.enter,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              next: Container(
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  child: Text(
                    AppLocalizations.of(context)!.next,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              skip: Text(
                AppLocalizations.of(context)!.skip,
                style: TextStyle(color: mainColor, fontWeight: FontWeight.bold),
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
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TabsScreen()));
              },
              onDone: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
