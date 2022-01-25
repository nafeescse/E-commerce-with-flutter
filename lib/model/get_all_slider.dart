import 'package:meta/meta.dart';
import 'dart:convert';

List<GetAllSlider> getAllSliderFromJson(String str) => List<GetAllSlider>.from(json.decode(str).map((x) => GetAllSlider.fromJson(x)));

String getAllSliderToJson(List<GetAllSlider> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllSlider {
  GetAllSlider({
    required this.id,
    required this.sliderImage,
    required this.status,
  });

  int id;
  String sliderImage;
  String status;

  factory GetAllSlider.fromJson(Map<String, dynamic> json) => GetAllSlider(
    id: json["id"],
    sliderImage: json["slider_image"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slider_image": sliderImage,
    "status": status,
  };
}