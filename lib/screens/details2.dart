import 'package:first/model/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class DetailsScreen2 extends StatelessWidget {
  final String imageUrl;
  final String modelName;
  final String type;
  final String quantity;
  final String height;


  DetailsScreen2({
    required this.imageUrl,
    required this.modelName,
    required this.type,
    required this.quantity,
    required this.height,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تفاصيل النموذج'), // Screen title
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top Icons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_circle_right, size: 25,
                        color: Colors.black),
                    onPressed: () {},
                  ),
                  Row(
                    children: [
                      Text(" التفاصيل ",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),),
                      IconButton(
                        icon: const Icon(
                            Icons.arrow_circle_left, size: 25, color: Colors.black),
                        onPressed: () {},
                      ),

                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Image Container
              Container(
                height: 182,
                width: 275,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
           Column(
            crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               Text("اسم الخامه",style: TextStyle(
                   fontSize: 20,
                 fontWeight: FontWeight.bold
               )),
               SizedBox(
                 height: 1,
               ),
               Container(
                 height: 28,
                 width: 240,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: Text(
                   modelName,style: TextStyle(
                   fontSize:18,
                   color: Colors.white
                 ),
                   textAlign: TextAlign.center,

                 ),
               ),
               SizedBox(height: 10,),
               Text("الكميه",style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold
               )),
               SizedBox(
                 height: 1,
               ),
               Container(
                 height: 28,
                 width: 240,
                 decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(10)
                 ),
                 child: Text(
                   height,style: TextStyle(
                     fontSize:18,
                     color: Colors.white
                 ),
                   textAlign: TextAlign.center,

                 ),
               ),
               SizedBox(height: 10,),
               Text("طول الغرزه",style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold
               )),
               SizedBox(
                 height: 1,
               ),
               Container(
                 height: 28,
                 width: 240,
                 decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(10)
                 ),
                 child: Text(
                   quantity,style: TextStyle(
                     fontSize:18,
                     color: Colors.white
                 ),
                   textAlign: TextAlign.center,

                 ),
               ),
               SizedBox(height: 10,),
               Text("نوع الغزل",style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold
               )),
               SizedBox(
                 height: 1,
               ),
               Container(
                 height: 28,
                 width: 240,
                 decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(10)
                 ),
                 child: Text(
                   type,style: TextStyle(
                     fontSize:18,
                     color: Colors.white
                 ),
                   textAlign: TextAlign.center,

                 ),
               ),
               SizedBox(height: 10,),



             ],
           ),
              SizedBox(
                height: 80,
              ),
              Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Text(
                        " اختيار الالة   ",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),




              // Booking Button

            ],
          ),
        ),
      ),
    );
  }
}