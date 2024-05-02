
import 'package:flutter/material.dart';
import 'package:project_app/pages/details.dart';
import 'package:project_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
 Widget build (BuildContext context){
  return Scaffold(
    body: Container (
      margin: const EdgeInsets.only(top: 50.0, left: 20.0,),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
       Text(
            "Hello Radwa,", 
          style:AppWidget.boldTextFeildStyle(),
          ),
           Container(
            margin: const EdgeInsets.only(right: 20.0),
            padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(color: const Color.fromRGBO(175, 15, 15, 0.904), borderRadius: BorderRadiusDirectional.circular(8)),
        child: const Icon(Icons.shopping_cart, color: Colors.white,),
      )
      
      ],
      ),
       const SizedBox(height: 20.0,),
       Text(
            "Choose your favorite " "food",
          style:AppWidget.HeadlineTextFeildStyle(),
          ),
          Text(
            "Discover and get great food",
          style:AppWidget.lightTextFeildStyle(),
          ),
          const SizedBox(height: 30.0,),
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
            
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Details()));
                },
                child: Container( 
                  margin: const EdgeInsets.all(4),
                   child:Material(elevation: 5.0,
                       borderRadius: BorderRadius.circular(20), 
                       child: Container(
                padding: const EdgeInsets.all(14),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                             children: [ Image.asset
                             ('Images/pngwing.com (1).png', height: 180, width: 180, fit:BoxFit.cover, ),
                Text(
                  "Burger",
                style:AppWidget.HeadlineTextFeildStyle(),
                ),
                 Text(
                  "Bufflo Burger",
                style:AppWidget.lightTextFeildStyle()),
                const SizedBox(height: 5.0,),
                Text("\$100", style: AppWidget.SemiBoldTextFeildStyle(),)
                ]),  
                             ),
                       ),
                ),
              ),
              const SizedBox(width: 15.0,),
              Container(margin: const EdgeInsets.all(4),
                child: Material(elevation: 5.0,
                       borderRadius: BorderRadius.circular(20), 
                       child: Container(
                padding: const EdgeInsets.all(14),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                             children: [ Image.asset
                             ('Images/pngwing.com (1).png', height: 180, width: 180, fit:BoxFit.cover, ),
                Text(
                  "Burger",
                style:AppWidget.HeadlineTextFeildStyle(),
                ),
                 Text(
                  "Bufflo Burger",
                style:AppWidget.lightTextFeildStyle()),
                const SizedBox(height: 5.0,),
                Text("\$100", style: AppWidget.SemiBoldTextFeildStyle(),)
                ]),  
                             ),
                       ),
              ),
                     
            ],
            ),
          ),
        Container(
          margin: const EdgeInsets.only(right: 20.0),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(5),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Image.asset('Images/pngwing.com (1).png',
                height: 120,
                width: 120,
                fit: BoxFit.cover,
                ),
                const SizedBox(width: 20.0,),
                Column(children: [ 
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: Text('salad', style: AppWidget.SemiBoldTextFeildStyle(),)),
                    const SizedBox(height: 5.0,),
                    SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: Text('salad', style: AppWidget.lightTextFeildStyle(),)),
                    const SizedBox(height: 5.0,),
                    SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: Text('\$150', style: AppWidget.SemiBoldTextFeildStyle(),)),
            
                ],)
              ],),
            ),
          ),
        )
        ],
      ),
      ),
      );

 }
}
 
