import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:flutter_application_1/widgets/constant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.coffe});
  final CoffeeModle coffe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 13.0, vertical: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
                const Text('Detail', style: TextStyle(fontSize: 20)),
                Icon( Icons.favorite, color: Colors.grey[400],),
              ],
            ),
            SizedBox(height: 20,),
            ClipRRect(
              borderRadius:const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(coffe.Image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              )),
              SizedBox(height: 15,),
              Row(
                children: [
                  Text(coffe.name, style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
             const SizedBox(height: 3,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Lce/Hot', style: TextStyle(fontSize: 20, color: Colors.grey),),
                 Row(
                  children: [
                     Image.asset('assets/bike.png'),
                  SizedBox(width: 18,),
                  Image.asset('assets/milk.png'),
                  SizedBox(width: 18,),
                  Image.asset('assets/Mask Group (1).png'),
                  ],
                 )
                ],
              ),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/Rating.png'),
                  SizedBox(width: 4,),
                  Text(coffe.rating.toString(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(width: 5,),
                  Text('(1000+)', style: TextStyle(color: Colors.grey),),
                ],
              ),
              SizedBox(height: 15,),
             const Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 270,
                   child: Divider(
                    color: Colors.grey,
                    thickness: 1,

                   ),
                  )
                ],
              ),
              SizedBox(height: 15,),
             const Row(
                children: [
                  Text('Description', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
             const SizedBox(height: 15,),
               Text(coffe.description, 
               maxLines: 3,
               overflow: TextOverflow.ellipsis,
               style: TextStyle(fontSize: 15),),
              SizedBox(height: 5,),
              const Text('Read More', style: TextStyle(color: kprimaryColor),),
              SizedBox(height: 5,),
             const Row(
                children: [
                  Text('Size', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 9,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 75,
                    height: 50,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text('S', style: TextStyle(fontSize: 20, ),),
                    ),
                  ),
                  
                  Container(
                    width: 75,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 181, 144),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text('M', style: TextStyle(fontSize: 20, ),),
                    ),
                  ),

                  Container(
                    width: 75,
                    height: 50,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text('L', style: TextStyle(fontSize: 20, ),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                 Column(
                  children: [
                    const Text('Price', style: TextStyle(fontSize: 20,),),
                const  SizedBox(width: 5,),
                  Text('₹${coffe.price.toString()}', style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: kprimaryColor ),),
                  ],
                 ),
                const  SizedBox(width: 65,),
                  Container(
                    height:60,
                    width: 205,
                    decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text('Add to Cart', style: TextStyle(fontSize: 20, color: Colors.white),),
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