import 'package:hive/hive.dart';



@HiveType(typeId: 0)
class Item extends HiveObject {
  @HiveField(0)
  late String img;

  @HiveField(1)
  late String name;

  @HiveField(2)
  late String price;

  @HiveField(3)
  late String des;

  @HiveField(4)
  late String left;

  Item({required this.img, required this.name, required this.price, required this.des, required this.left});
}
