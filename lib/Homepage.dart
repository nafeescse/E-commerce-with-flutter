import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 50, 15, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Discover",style: TextStyle(fontSize: 40),),
                        CircleAvatar(
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVA_HrQLjkHiJ2Ag5RGuwbFeDKRLfldnDasw&usqp=CAU"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .80,
                              child: TextField(
                                decoration: InputDecoration(

                                  hintText: 'Search Products',
                                  suffixIcon: Icon(Icons.add_shopping_cart_rounded),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),),
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.only(right: 15),
                            margin: EdgeInsets.only(right: 10),
                            height: 50,
                            width: 40,

                            child: Icon(Icons.four_g_plus_mobiledata_sharp,color: Colors.black,),
                            decoration: BoxDecoration(color: Color(0xFFE0E0E0),
                            )
                        )],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Categories",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_right_alt),
                    ],
                  ),
                  Container(
                      height: 300,
                      padding: EdgeInsets.only(left: 10),
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 5,crossAxisCount: 1
                        ),
                        //
                        itemBuilder: (context, index) =>  Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,),
                        itemCount: 5,
                        // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,),
                        // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,)
                      )
                  ),
                  Container(color: Color(0xFFBDBDBD),
                    padding: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * .9,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5, maxCrossAxisExtent: 200
                      ),
                      //
                      itemBuilder: (context, index) =>
                          Container(
                              padding:EdgeInsets.all(10),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(border: Border.all(color: Colors.white),boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 4,
                                ),
                              ],borderRadius: BorderRadius.all(Radius.circular(20))),
                              child:
                              Column(
                                children: [
                                  Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),),
                                  Text("Sofa"),
                                  Text("500 TK"),
                                  TextButton(onPressed: () {},
                                      child: Text("Add Cart"))

                                ],
                              )),

                      itemCount: 10,
                      // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,),
                      // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,)
                    ),
                  )

                ],
              )
          ),
    );
  }
}
