import 'package:house_inventory/models/base_model.dart';

class ShoppingList extends BaseModel {
  String userUUID;
  String categoryUUID;
  String statusUUID;

  ShoppingList(
      {required String uuid,
      required this.userUUID,
      required this.categoryUUID,
      required this.statusUUID,
      int? id,
      String? created_at,
      String? updated_at})
      : super(uuid, id, created_at, updated_at);
}
