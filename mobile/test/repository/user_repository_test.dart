import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:house_inventory/core/database.dart';
import 'package:house_inventory/models/users.dart';
import 'package:house_inventory/repository/user_repository.dart';

main() {
  UserRepository? userRepository;

  setUp(() async {
    AppDatabase appDatabase = AppDatabase(urlDatabase: "app.db");
    await appDatabase.open("app.db");
    userRepository = UserRepository(appDatabase: appDatabase);
  });
  test("Create user", () async {
    User user =
        User(uuid: "teste", username: "teste", name: "teste", surname: "teste");

    var result = await userRepository?.create(user);
    expect(result, isNotNull);
  });

  test("Get User by Username and Password", () async {
    User user = User(
        uuid: "teste",
        username: "teste",
        name: "teste",
        surname: "teste",
        password: "teste");
    var userId = await userRepository?.create(user);
    var logged =
        await userRepository?.getUserByUsernameAndPassword("teste", "teste");

    expect(logged, isNotNull);
    expect(logged?.name, user.name);
  });
}
