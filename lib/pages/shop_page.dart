import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nectar_ui/widgets/list.dart';
import 'package:nectar_ui/widgets/search_text_field.dart';
import '../utilities/constants.dart';
import '../utilities/image_path.dart';
import '../utilities/strings.dart';

class ShopPage extends StatefulWidget {
  ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final TextEditingController _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 80,
        title: SizedBox(
          child: Column(
            children: [
              ImagePath.logoIcon,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImagePath.locationIcon,
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Dhaka, Banassre",
                      style: TextStyle(
                          color: Color(0xff4C4F4D),
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              const SearchBarTextField(),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                "assets/images/banner.png",
                width: double.infinity,
                height: 130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    Strings.exclusiveOffer,
                    style: cHeadsTextStyle,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(Strings.seeAll,
                          style: cTextButtonTextStyle))
                ],
              ),
              const HorizontalListView(),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      Strings.bestSelling,
                      style: cHeadsTextStyle,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(Strings.seeAll,
                            style: cTextButtonTextStyle))
                  ],
                ),
              ),
              const HorizontalListView(),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      Strings.groceries,
                      style: cHeadsTextStyle,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(Strings.seeAll,
                          style: cTextButtonTextStyle),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 105,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    cacheExtent: 105,
                    itemExtent: 250,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: cGroceriesBackgroundColors[index],
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 16, left: 16, bottom: 16),
                              child: Row(
                                children: [
                                  Image.asset(
                                      ImagePath.groceriesListImagePath[index]),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      Strings.groceriesListHeads[index],
                                      style: cGroceriesListHeadStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const HorizontalListView(),
            ],
          ),
        ),
      ),
    );
  }
}
