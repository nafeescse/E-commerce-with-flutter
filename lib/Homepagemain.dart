import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'Screen/sofa_details.dart';
import 'assistant/user_info.dart';
import 'controller.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  String usernName = "";
  final _controller = Get.put(Controller());

  @override
  void initState() {
    super.initState();
    getSharedPreferenceData;
    _controller.getAllCategory();
    _controller.getProductData();
    _controller.getAllSlider();
    // print("_controller.dataProductData.length.toString"+ 'Hello');
  }

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
                    Text("Discover",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    CircleAvatar(
                        child: Image(image: AssetImage("assets/nafees.jpeg")))
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
                                suffixIcon:
                                    Icon(Icons.add_shopping_cart_rounded),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(right: 10),
                        height: 50,
                        width: 40,
                        child: Icon(
                          Icons.apps,
                          size: 35,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(shape: BoxShape.rectangle))
                  ],
                ),
              ),
              Obx(() {
                if(_controller.loadingSliderList.value){
                  return CircularProgressIndicator();
                }else {
                  return CarouselSlider.builder(
                      itemCount: _controller.dataSliderList.length,
                      itemBuilder: (context, index, realIndex) {
                        return CachedNetworkImage(
                          imageUrl: "https://happybuy.appsticit.com/" +
                              _controller.dataSliderList[index]
                                  .sliderImage
                                  .toString(),
                        );
                      },
                      options: CarouselOptions(
                        height: 150.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                        Duration(seconds: 1),
                        viewportFraction: 1,
                      ));
                }

              }),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      size: 35,
                    ),
                  ],
                ),
              ),
              Obx(() {
                if (_controller.loadingCategoryList.value) {
                  return CircularProgressIndicator();
                } else {
                  return Container(
                      color: Colors.white,
                      height: 100,
                      padding: EdgeInsets.only(left: 10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _controller.dataCategorylist.length,
                        //gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),

                        //
                        itemBuilder: (context, index) {
                          return Container(
                              height: 100,
                              width: 100,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 4,
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Image.network(
                                  "https://happybuy.appsticit.com" +
                                      _controller
                                          .dataCategorylist[index].categoryImage
                                          .toString()));
                        },
                      )

                      // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,),
                      // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,)
                      );
                }
              }),
              Icon(
                Icons.menu,
              ),
              Obx(
                () {
                  if (_controller.loadingProductList.value) {
                    return CircularProgressIndicator();
                  } else {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          color: Color(0xFFE0F2F1)),
                      padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * .8,
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            crossAxisCount: 2),
                        //
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SofaDetails(index: index)));
                            // _controller.dataProductlist[index].description.toString()));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  child: Image.network(
                                    "https://happybuy.appsticit.com" +
                                        _controller.dataProductlist[index].img1
                                            .toString(),
                                    height: 100,
                                    width: 150,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),

                                // borderRadius: BorderRadius.circular(30),
                                SizedBox(height: 5),
                                Text(
                                  _controller.dataProductlist[index].name
                                      .toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      _controller.dataProductlist[index].price
                                          .toString(),
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Text(
                                      _controller
                                          .dataProductlist[index].sellingPrice
                                          .toString(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        itemCount: _controller.dataProductlist.length,
                        // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,),
                        // Image(image: NetworkImage("https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE="),width: MediaQuery.of(context).size.width *.35,)
                      ),
                    );
                  }
                },
              ),
            ]
          )),
    );
  }

  void getSharedPreferenceData() async {
    UserInfo user = new UserInfo();
    await user.getName().then((value) {
      setState(() {
        usernName = value;
      });
    });
  }
}
