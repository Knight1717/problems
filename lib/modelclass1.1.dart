import 'dart:math';

class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}
List wars= dataModel.map((e) => Model(e["image"], e["text"])).toList();

var dataModel=[
  {"image":"assets/shoe.webp","text":"Shoe"},
  {"image":"assets/phone.jpg","text":"Mobile"},
  {"image":"assets/bottle.webp","text":"Bottle"},
  {"image":"assets/pods.jfif","text":"Airpods"},
];