import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Gridview_item.dart';
import 'package:flutter_application_1/widgets/body_banner.dart';
import 'package:flutter_application_1/widgets/body_header.dart';
import 'package:flutter_application_1/widgets/body_search.dart';
import 'package:flutter_application_1/widgets/categories_item.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff313131),
                        Color(0xff111111),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'location',
                        style: TextStyle(
                          color: Color.fromARGB(255, 212, 211, 211),
                        ),
                      ),
                      const SizedBox(height: 3),
                      const BodyHeader(),
                      const SizedBox(height: 12),
                      const BodySearch(),
                      const SizedBox(height: 13),
                      const BodyBanner(),
                      const SizedBox(height: 11),
                      CategoriesItem(),
                      const SizedBox(height: 11),
                      // تم إزالة Expanded من هنا
                    const GridviewItem(),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
