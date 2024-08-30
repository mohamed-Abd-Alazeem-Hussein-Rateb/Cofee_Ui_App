import 'package:flutter/material.dart';

class CategoriesItem extends StatefulWidget {
  CategoriesItem({super.key});

  @override
  _CategoriesItemState createState() => _CategoriesItemState();
}

class _CategoriesItemState extends State<CategoriesItem> {
  // المتغير لحفظ الـ index للعنصر المحدد
  int selectedIndex = 0;

  final List<String> categories = [
    "All Coffee",
    "Machiato",
    "Latte",
    "Americano",
    "Cappuccino",
    "Espresso",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          // تحديد اللون بناءً على الـ selected index
          final color = index == selectedIndex ? Colors.brown : Color(0xffEDEDED);
          final textColor = index == selectedIndex ? Colors.white : Colors.black;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                height: 30,
                width: 118,
                decoration: BoxDecoration(
                  color: color, // اللون المختار بناءً على الضغط
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(color: textColor),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
