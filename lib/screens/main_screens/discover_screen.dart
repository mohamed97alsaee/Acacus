import 'package:acacus/widgets/clickable_widgets/filter_button.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  int seletedTabIndex = 0;

  List filters = [
    'الكل',
    'المتابعين',
    'المتابعون',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: filters.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return FilterButton(
                            btnTitle: filters[index],
                            isSelected: seletedTabIndex == index,
                            onClick: () {
                              setState(() {
                                seletedTabIndex = index;
                              });
                            });
                      }),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
