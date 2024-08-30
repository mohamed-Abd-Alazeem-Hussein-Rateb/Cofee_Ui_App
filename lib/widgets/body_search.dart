import 'package:flutter/material.dart';

class BodySearch extends StatelessWidget {
  const BodySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 250,
          decoration: BoxDecoration(
            color: const Color(0xff2A2A2A),
            borderRadius:
                BorderRadius.circular(15), // تأكد من جعل الزوايا دائرية
          ),
          child: const TextField(
            decoration: InputDecoration(
              fillColor: Colors
                  .transparent, // اجعل لون الخلفية شفافًا هنا لأن الـ Container يتولى الأمر
              filled: true,
              border: InputBorder.none, // إزالة الحواف الافتراضية للـ TextField
              prefixIcon: Icon(Icons.search, color: Colors.white),
              hintText: 'Search coffee',
              hintStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Image.asset('assets/Filet.png'),
      ],
    );
  }
}
