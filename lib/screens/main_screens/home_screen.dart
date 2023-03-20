import 'package:acacus/helpers/consts.dart';
import 'package:acacus/widgets/clickable_widgets/close_place_card.dart';
import 'package:acacus/widgets/clickable_widgets/custom_icon_button.dart';
import 'package:acacus/widgets/clickable_widgets/place_card.dart';
import 'package:acacus/widgets/input_widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                centerTitle: false,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'مرحبا محمود!',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "استكشف معالم ليبيا بضغطة زر",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                actions: [
                  CustomIconButton(
                      onPressed: () {}, icon: Icons.favorite_border_outlined),
                  CustomIconButton(
                      onPressed: () {}, icon: Icons.settings_outlined),
                ],
              ),
              TextFieldWidget(
                  perfix: Icon(
                    Icons.search,
                    color: mainColor,
                  ),
                  controller: searchController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "الرجاء ادخال البريد الالكتروني";
                    }

                    return null;
                  },
                  hintText: 'ابحث عن معلم، مدينة، او فندق'),
              const Divider(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'بالقرب مني',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const ClosePlaceCard();
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'الاكثر شهرة',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.55,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const PlaceCard(
                            expandable: false,
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: GridView.builder(
                        itemCount: 11,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                                crossAxisSpacing: 7,
                                mainAxisSpacing: 7),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    )
                                  ]),
                                  child: GridTile(
                                    footer: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Text(
                                            'بنغازي',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    child: Image.network(
                                      'https://tourslibya.com/wp-content/uploads/2018/01/libya-tours-jebel-acacaus-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ),
                          );
                        }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
