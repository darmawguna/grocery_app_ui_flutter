import 'package:flutter/material.dart';

import 'package:grocery_app_v2/utils/color.dart';

class HeaderParts extends StatefulWidget {
  const HeaderParts({super.key});

  @override
  State<HeaderParts> createState() => _HeaderPartsState();
}

class _HeaderPartsState extends State<HeaderParts> {
  int indexCategory = 0;

  void indexCategoryChange(e) {
    indexCategory = e;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TopHeader(),
        const SizedBox(
          height: 30,
        ),
        title(),
        const SizedBox(
          height: 21,
        ),
        searchBar(),
        const SizedBox(
          height: 30,
        ),
        categorySelection(),
      ],
    );
  }

  Padding categorySelection() {
    List list = ["all", "Fruits", "Vegetables", "Grocery"];
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                indexCategoryChange(index);
                setState(() {});
              },
              child: Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: Text(
                    list[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: indexCategory == index
                          ? primaryColor
                          : Colors.black45,
                      fontWeight: indexCategory == index
                          ? FontWeight.bold
                          : null,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Container searchBar() {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.green[50],
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                  hintText: "Search your food",
                  hintStyle: TextStyle(
                    color: Colors.black26,
                  )),
            ),
          ),
          Material(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                child: const Icon(
                  Icons.emoji_emotions_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding title() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi darma",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: primaryColor, fontSize: 18),
          ),
          Text(
            "Order your food",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 34,
            ),
          ),
        ],
      ),
    );
  }
}

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Material(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.menu_book_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.location_on,
            color: primaryColor,
            size: 18,
          ),
          const Text(
            "Bali",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/fourth.png',
              width: 40,
              height: 40,
            ),
          )
        ],
      ),
    );
  }
}
