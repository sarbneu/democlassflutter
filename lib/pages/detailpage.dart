import 'package:democlass/pages/dashboard.dart';
import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 55,),



            Stack(
              children: [
                Container(
                  height: size.height / 4,
                  width: size.width,
                  child: Image.network(fit: BoxFit.cover, "data:image/jpeg;base64,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"),
                ),
                Padding
                  (padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share,color: Colors.white,size: 30),),

                Container(
                  height: size.height / 4,
                  width: size.width,
                  child: Image.network(fit: BoxFit.cover, "data:image/jpeg;base64,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"),
                ),
                Padding
                  (padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share,color: Colors.white,size: 30),),

                Container(
                  height: size.height / 4,
                  width: size.width,
                  child: Icon(Icons.play_circle_fill,size:60, color: Colors.white,opticalSize: 40, ),),
                Padding
                  (padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share,color: Colors.white,size: 30),),
              ],
            ),

            SizedBox(height: 15,),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Happy dashain", style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Auther name"),
                        Text("02")
                      ],
                    )
                  ],
                ),
            ),
            Padding(padding: const EdgeInsets.only(left: 15,),
            ),

            Row(
              children: [
                SizedBox(width: 15,),
                Text("Related Videos",style: TextStyle(fontSize: 20,color: Colors.white),),
              ],
            ),
            dashboardState.verticallistitem(size, "money follows my brother money follows my brother money follows my brother",
                "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAA","","")

          ],
        ),
      ),
    );
  }
}
