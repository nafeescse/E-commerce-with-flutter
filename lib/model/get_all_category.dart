// To parse this JSON data, do
//
//     final getAllCategory = getAllCategoryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<GetAllCategory> getAllCategoryFromJson(String str) => List<GetAllCategory>.from(json.decode(str).map((x) => GetAllCategory.fromJson(x)));

String getAllCategoryToJson(List<GetAllCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllCategory {
  GetAllCategory({
    required this.id,
    required this.name,
    required this.categoryImage,
    required this.isActive,
  });

  int id;
  String name;
  String categoryImage;
  int isActive;

  factory GetAllCategory.fromJson(Map<String, dynamic> json) => GetAllCategory(
    id: json["id"],
    name: json["name"],
    categoryImage: json["category_image"],
    isActive: json["is_active"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "category_image": categoryImage,
    "is_active": isActive,
  };
}
