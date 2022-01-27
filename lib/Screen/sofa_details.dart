import 'package:ecommerce/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:ecommerce/controller.dart';

class SofaDetails extends StatefulWidget {
  SofaDetails({required this.index});
  int index;

  @override
  _SofaDetailsState createState() => _SofaDetailsState();

}

class _SofaDetailsState extends State<SofaDetails> {

  final _controller = Get.put(Controller());
  int copyIndex = 0;
  late double displayHeight = MediaQuery.of(context).size.height;
  late double displayWidth = MediaQuery.of(context).size.width;

  @override
  void initState() {
    super.initState();
    // getSharedPreferenceData;

    _controller.getAllCategory();
    _controller.getProductData();
    // print("_controller.dataProductData.length.toString"+ 'Hello');
  }

  @override
  Widget build(BuildContext context) {
    copyIndex = widget.index;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Description'),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child:  Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Image.network(
                  "https://happybuy.appsticit.com" +
                      _controller.dataProductlist[copyIndex]
                          .img1
                          .toString(),
                  fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * .4,
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(_controller.dataProductlist[copyIndex].name.toString(),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: displayHeight * 0.01),
            Container(
              child: Text(_controller.dataProductlist[copyIndex].description.toString(),
                textAlign: TextAlign.justify,
              ),
              // _controller.dataProductlist.description.toString()
            ),
            SizedBox(height: displayHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_controller.dataProductlist[copyIndex].price.toString(),
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(_controller.dataProductlist[copyIndex].sellingPrice.toString(),
                  // _controller.dataProductlist[index].sellingPrice.toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
            SizedBox(height: displayHeight * 0.02),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: displayHeight * 0.05, width: displayWidth * 0.3,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child:  const Center(
                    child: Text('ADD TO CART',
                      style: TextStyle(color: Colors.white),
                    )
                ),
              ),
            )
          ],
        ),

        // ListView.builder(
        //   scrollDirection: Axis.vertical,
        //
        //
        //   //
        //   itemBuilder: (context, index) => Container(
        //
        //     child: Container(
        //       child:
        //       Column(
        //         // mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           ClipRRect(
        //             borderRadius: const BorderRadius.all(Radius.circular(15)),
        //             child: Image(image: AssetImage("assets/sofa-1.png"))
        //             // Image.network(
        //             //   "https://happybuy.appsticit.com" +
        //             //       _controller.dataProductlist[index]
        //             //           .img1
        //             //           .toString(),height: 100,width: 150,)
        //           ),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Text('Volcanic Gray Sofa',
        //                 style: TextStyle(
        //                   fontSize: 18,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             ],
        //           ),
        //           SizedBox(height: displayHeight * 0.01),
        //           Container(
        //             child: Text('Description.Description.Description.Description.Description.Description.Description.'
        //                 'Description.Description.Description.Description.Description.Description.Description.Description.'
        //                 'Description.Description.Description.Description.Description.Description.Description.'
        //                 'Description.Description.Description.Description.Description.Description.Description.D'
        //                 'escription.Description.Description.Description.Description.Description.Description.Description.'
        //                 'Description.Description.Description.Description.Description.Description.Description.Description'
        //                 '.Description.Description.Description.Description.Description.Description.Description.Description.Description.Description.Description.Descriptionption.Description.',
        //               // _controller.dataProductlist[index].description.toString(),
        //               textAlign: TextAlign.justify,
        //             ),
        //             // _controller.dataProductlist.description.toString()
        //           ),
        //           SizedBox(height: displayHeight * 0.02),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Text('500',
        //                 // _controller.dataProductlist[index].price.toString(),
        //                 style: TextStyle(
        //                   decoration: TextDecoration.lineThrough,
        //                   color: Colors.red,
        //                   fontSize: 20,
        //                 ),
        //               ),
        //               Text('900',
        //                 // _controller.dataProductlist[index].sellingPrice.toString(),
        //                 style: TextStyle(
        //                   fontSize: 20,
        //                 ),
        //               )
        //             ],
        //           ),
        //           SizedBox(height: displayHeight * 0.02),
        //           GestureDetector(
        //             onTap: (){},
        //             child: Container(
        //               height: displayHeight * 0.05, width: displayWidth * 0.3,
        //               decoration: const BoxDecoration(
        //                 color: Colors.blue,
        //                 borderRadius: BorderRadius.all(Radius.circular(20)),
        //               ),
        //               child:  const Center(
        //                   child: Text('ADD TO CART',
        //                     style: TextStyle(color: Colors.white),
        //                   )
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //
        //   ),
        //
        //   itemCount: _controller.dataProductlist.length,
        //   // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,),
        //   // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,)
        // ),

      ),
    );
  }
}
