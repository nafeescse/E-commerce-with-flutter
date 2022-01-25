import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(onPressed: () {},
          child: Text("Buy Now",style: TextStyle(
              fontSize: 16,color: Colors.white),

          ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        // width: MediaQuery.of(context).size.width * .8,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * .65,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/chair-1.png"),
                    fit: BoxFit.cover
                ),

              ),
              child: Padding(padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.loose,
                    child: MaterialButton(onPressed: () {},
                      color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 2.0,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Icon(Icons.chevron_left, color: Colors.black,),
                    ),
                  ),
                  Expanded(child: Text("Details", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),)),
                  Flexible(
                    flex: 3,
                    fit: FlexFit.loose,
                    child: MaterialButton(onPressed: () {},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 2.0,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Icon(Icons.favorite_border, color: Colors.black,),
                    ),
                  ),
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
