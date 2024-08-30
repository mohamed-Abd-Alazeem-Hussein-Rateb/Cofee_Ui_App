import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/body_banner.dart';
import 'package:flutter_application_1/widgets/body_header.dart';
import 'package:flutter_application_1/widgets/body_search.dart';

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
                    gradient: LinearGradient(colors: [
                  Color(0xff313131),
                  Color(0xff111111),
                ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
              ),
            const  Padding(
                padding:  EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                   const  Text(
                      'location',
                      style:
                          TextStyle(color: Color.fromARGB(255, 212, 211, 211)),
                    ),
                     SizedBox(
                      height: 3,
                    ),
                    BodyHeader(),
                     SizedBox(
                      height: 12,
                    ),
                    BodySearch(),
                    SizedBox(height: 13,),
                   BodyBanner(),
                   SizedBox(height: 11,),
                   
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
