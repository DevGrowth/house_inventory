import 'package:house_inventory/models/base_model.dart';

class User extends BaseModel {
  String username;
  String name;
  String surname;
  String password;

  User(
      {required String uuid,
      required this.username,
      required this.name,
      required this.surname,
      required this.password,
      int? id,
      String? created_at,
      String? updated_at})
      : super(uuid, id, created_at, updated_at);
}
