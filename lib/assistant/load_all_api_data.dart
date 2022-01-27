import 'dart:convert';

import 'package:ecommerce/model/get_all_category.dart';
import 'package:ecommerce/model/get_all_product_data.dart';
import 'package:ecommerce/model/get_all_slider.dart';
import 'package:ecommerce/model/get_all_user_list.dart';
import 'package:ecommerce/model/get_order_summery.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce/model/orders.dart';

class LoadAllApiData{
  static Future<List<Orders>?> fetchAllOrderData()async {
    var url = Uri.parse("https://happybuy.appsticit.com/orders");
    var heroResponse = await http.get(url,
    headers: {"Content-Type": "application/json"});

    if(heroResponse.statusCode == 200){
      var jsonDecode = json.decode(heroResponse.body);
      var convertData = json.encode(jsonDecode);
      print(convertData = "Done");
      return ordersFromJson(convertData);
    }
    return null;

  }

  static Future<List<GetAllCategory>?> fetchAllCategoryData()async {
    var url = Uri.parse("https://happybuy.appsticit.com/getallcategory");
    var heroResponse = await http.get(url,
    headers: {"Content-Type": "application/json"});

    if(heroResponse.statusCode == 200){
      var jsonDecode = json.decode(heroResponse.body);
      var convertData = json.encode(jsonDecode['data']);
      print(convertData + "Hello");
      return getAllCategoryFromJson(convertData);
    }
    return null;

  }
  static Future<List<GetAllProductData>?> fetchAllProductData()async {
    var url = Uri.parse("https://happybuy.appsticit.com/getallproductdata");
    var heroResponse = await http.get(url,
    headers: {"Content-Type": "application/json"});

    if(heroResponse.statusCode == 200){
      var jsonDecode = json.decode(heroResponse.body);
      var convertData = json.encode(jsonDecode['data']);
      print(convertData +"Hello");
      return getAllProductDataFromJson(convertData);
    }
    return null;

  }
  static Future<List<GetAllSlider>?> fetchAllslider()async {
    var url = Uri.parse("https://happybuy.appsticit.com/getallsliders");
    var heroResponse = await http.get(url,
    headers: {"Content-Type": "application/json"});

    if(heroResponse.statusCode == 200){
      var jsonDecode = json.decode(heroResponse.body);
      var convertData = json.encode(jsonDecode['data']);
      print(convertData +"Hello");
      return getAllSliderFromJson(convertData);
    }
    return null;

  }
  static Future<List<AllUserList>?> fetchAllUserList()async {
    var url = Uri.parse("https://happybuy.appsticit.com/allUserList");
    var heroResponse = await http.get(url,
    headers: {"Content-Type": "application/json"});

    if(heroResponse.statusCode == 200){
      var jsonDecode = json.decode(heroResponse.body);
      var convertData = json.encode(jsonDecode['data']);
      print(convertData +"Hello");
      return allUserListFromJson(convertData);
    }
    return null;

  }
  static Future<GetOrderSummary?> fetchOrderSummary()async {
    var url = Uri.parse("https://happybuy.appsticit.com/getordersummary");
    var heroResponse = await http.get(url,
        headers: {"Content-Type": "application/json"});

    if(heroResponse.statusCode == 200){
      var jsonDecode = json.decode(heroResponse.body);
      var convertData = json.encode(jsonDecode['data']);
      print(convertData +"Hello");
      return getOrderSummaryFromJson(convertData);
    }
    return null;

  }
}