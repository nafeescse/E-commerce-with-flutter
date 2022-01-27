import 'package:ecommerce/model/get_all_user_list.dart';
import 'package:ecommerce/model/get_order_summery.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'assistant/load_all_api_data.dart';
import 'model/get_all_category.dart';
import 'model/get_all_product_data.dart';
import 'model/get_all_slider.dart';
import 'model/orders.dart';

class Controller extends GetxController{

  var loadingCategoryList  = true.obs;
  var loadingOrderList  = true.obs;
  var loadingProductList  = true.obs;
  var loadingSliderList  = true.obs;
  var loadingUserList  = true.obs;
  var loadingOrderSummaryList  = true.obs;

  var dataCategorylist = List<GetAllCategory>.empty().obs;
  var dataOrderlist = List<Orders>.empty().obs;
  var dataProductlist = List<GetAllProductData>.empty().obs;
  var dataSliderList = List<GetAllSlider>.empty().obs;
  var dataUserlist = List<AllUserList>.empty().obs;
  var dataOrderSummarylist = List<GetOrderSummary>.empty().obs;
  void init(BuildContext context){
    getAllCategory();
    getOrders();
    getProductData();
    getAllSlider();
    AllUsersList();
    getOrderSummary();
  }


  getAllCategory() async{
    try{
      loadingCategoryList(true).obs;

      var data = await LoadAllApiData.fetchAllCategoryData();

      if(data != null){
        print("Category data Retrieved");
        dataCategorylist.value = data;
      }
    }catch(e){
      print(e.toString()+ "Category Error");
    }finally{
      loadingCategoryList(false).obs;
    }
  }

  getOrders() async{
    try{
      loadingOrderList(true).obs;

      var data = await LoadAllApiData.fetchAllOrderData();

      if(data != null){
        print("Order data Retrieved");
        dataOrderlist.value = data;
      }
    }catch(e){
      print(e.toString()+ "Order Error");
    }finally{
      loadingOrderList(false).obs;
    }
  }

  getProductData() async{
    try{
      loadingProductList(true).obs;

      var data = await LoadAllApiData.fetchAllProductData();

      if(data != null){
        print("Product data Retrieved");
        dataProductlist.value = data;
      }
    }catch(e){
      print(e.toString()+ "Product Error");
    }finally{
      loadingProductList(false).obs;
    }
  }

  getAllSlider() async{
    try{
      loadingSliderList(true).obs;

      var data = await LoadAllApiData.fetchAllslider();

      if(data != null){
        print("Slider data Retrieved");
        dataSliderList.value = data;
      }
    }catch(e){
      print(e.toString()+ "Slider Error");
    }finally{
      loadingSliderList(false).obs;
    }
  }

  AllUsersList() async{
    try{
      loadingUserList(true).obs;

      var data = await LoadAllApiData.fetchAllUserList();

      if(data != null){
        print("User data Retrieved");
        dataUserlist.value = data;
      }
    }catch(e){
      print(e.toString()+ "User Error");
    }finally{
      loadingUserList(false).obs;
    }
  }

  getOrderSummary() async{
    try{
      loadingOrderSummaryList(true).obs;

      var data = await LoadAllApiData.fetchAllUserList();

      if(data != null){
        print("User data Retrieved");
        dataUserlist.value = data;
      }
    }catch(e){
      print(e.toString()+ "User Error");
    }finally{
      loadingUserList(false).obs;
    }
  }
}