// To parse this JSON data, do
//
//     final prdResModel = prdResModelFromJson(jsonString);

import 'dart:convert';

List<PrdResModel> prdResModelFromJson(String str) => List<PrdResModel>.from(json.decode(str).map((x) => PrdResModel.fromJson(x)));

String prdResModelToJson(List<PrdResModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PrdResModel {
    int id;
    String title;
    double price;
    String description;
    String category;
    String image;
    Rating rating;

    PrdResModel({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.category,
        required this.image,
        required this.rating,
    });

    factory PrdResModel.fromJson(Map<String, dynamic> json) => PrdResModel(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating.toJson(),
    };
}

class Rating {
    double rate;
    int count;

    Rating({
        required this.rate,
        required this.count,
    });

    factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"]?.toDouble(),
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
    };
}
