import 'package:flutter/material.dart';

import '../../widgets/clickable_widgets/main_button.dart';
import '../../widgets/clickable_widgets/place_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool textExpanded = false;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const PlaceCard(),
                        const SizedBox(
                          height: 20,
                        ),
                        MainButton(
                          text: 'BORDER',
                          withBorder: true,
                          isloading: true,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MainButton(
                          onPressed: () {},
                          text: 'NO BORDER',
                          withBorder: false,
                          isloading: true,
                        ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
